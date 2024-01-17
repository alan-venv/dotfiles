import os
import subprocess
from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal


mod = "mod1"
terminal = "terminator" 

@hook.subscribe.startup_once
def autostart():
    # subprocess.Popen(["nitrogen", "--restore"])
    # subprocess.Popen(["setxkbmap", "-model", "abnt2", "-layout", "br"])
    subprocess.Popen(["picom"])
    subprocess.Popen(["feh" , "--bg-fill", "/usr/share/backgrounds/archlinux/awesome.png"])

keys = [
    # === Move focus
    Key([mod], "Left", lazy.layout.left()),
    Key([mod], "Right", lazy.layout.right()),
    Key([mod], "Down", lazy.layout.down()),
    Key([mod], "Up", lazy.layout.up()),
    # === Move window
    Key([mod, "shift"], "Left", lazy.layout.shuffle_left()),
    Key([mod, "shift"], "Right", lazy.layout.shuffle_right()),
    Key([mod, "shift"], "Down", lazy.layout.shuffle_down()),
    Key([mod, "shift"], "Up", lazy.layout.shuffle_up()),
    # === Grow window
    Key([mod, "control"], "Left", lazy.layout.grow_left()),
    Key([mod, "control"], "Right", lazy.layout.grow_right()),
    Key([mod, "control"], "Down", lazy.layout.grow_down()),
    Key([mod, "control"], "Up", lazy.layout.grow_up()),
    # === Others
    Key([mod], "Return", lazy.spawn(terminal)),
    Key([mod], "Tab", lazy.next_layout()),
    Key([mod], "l", lazy.spawn("i3lock -c '#000000'")),
    Key([mod], "p", lazy.spawn("poweroff")),
    Key([mod], "s", lazy.spawn("rofi -show drun")),
    Key([mod], "q", lazy.window.kill()),
    Key([mod, "control"], "r", lazy.reload_config()),
    Key([mod, "control"], "q", lazy.shutdown()),
]

groups = [Group(i) for i in "12345"]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            #     desc="move focused window to group {}".format(i.name)),
        ]
    )


layouts = [
    layout.Columns(border_width=1, margin=5, border_focus='#00ff00', border_normal='#ff0000'),
    layout.Max()
]

widget_defaults = dict(
    font="sans",
    fontsize=12,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        bottom=bar.Bar(
            [
                widget.GroupBox(),
                widget.WindowName(format=''),
                widget.Systray(),
                widget.CryptoTicker(format='{crypto}: ${amount:,.2f}', foreground="00ff00"),
                widget.TextBox("-"),
                widget.PulseVolume(fmt="Vol. {}", foreground="#00ff00"),
                widget.TextBox("-"),
                widget.CPU(format='CPU {load_percent}%', foreground="00ff00"),
                widget.TextBox("-"),
                widget.Memory(format='Memory {MemUsed:.0f}{mm}', foreground="00ff00"),
                widget.TextBox("-"),
                widget.Clock(format="%d/%m/%Y %I:%M %p", foreground="00ff00"),
                widget.TextBox("-"),
                widget.QuickExit(countdown_format="{} sec", default_text="Exit ", foreground="ff0000"),
            ],
            24,
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = False
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wl_input_rules = None
wmname = "LG3D"
