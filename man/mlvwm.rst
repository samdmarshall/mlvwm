mlvwm
=====

:Version:

NAME
-----

mlvwm − Macintosh Like Virtual Window Manager

SYNOPSIS
---------

**mlvwm** [ **−f** *initfile* ] [ **−d** *dpy* ] [ **−debug** ]


DESCRIPTION
------------

*mlvwm* is a window manager for X11 designed to look and feel like the Macintosh<tm> environment. It provides multiple desktops, separate menu bars for different applications, and the ability to interact with applications from that menu bar. It does this by sending key sequences to the application, such as ctrl-X or alt-Y.

OPTIONS
--------

These are the command line options that are recognized by *mlvwm*:

**-f** *config_file*

Causes *mlvwm* to use *config_fule* as it’s configuration file.

**-d** *display_name*

Brings *mlvwm* on display *display_name* instead of the name taken from the `DISPLAY` environment variable.

+-------------+-------------+-------------+-------------+-------------+
|             | **-debug**  |             | Debug mode. |             |
|             |             |             | Displays    |             |
|             |             |             | debugging   |             |
|             |             |             | information |             |
|             |             |             | .           |             |
+-------------+-------------+-------------+-------------+-------------+

CONFIGURATION FILES
--------------------

The configuration file is used to describe shortcut key bindings, menus, fonts, and various other settings. It is typically ".mlvwmrc" in your home directory, and if that does not exist it falls back to the system default. A different config file can be defined using the -f option shown above.

Lines beginning with ’#’ are ignored by *mlvwm*.

BUILT IN FUNCTIONS
-------------------

There are a number of built in functions in *mlvwm* that may be used in the configuration file. If there is an error in the config file, *mlvwm* will try it’s best to go on. If it can’t find a particular icon, it will complain on startup and leave the space blank where the icon was meant to go. Likewise, if you have a command misspelled or something to that effect, it will simply put up an error message and continue on through the rest of the config file.

The following commands can be used in menus, keyboard short cuts, and anything else along those lines:

**Exec** *app_name command*

Executes an external command as stated by *command*. *app_name* should be set to whatever the name of the application is that will be executed.

+-------------+-------------+-------------+-------------+-------------+
|             | **Nop**     |             | Does        |             |
|             |             |             | nothing.    |             |
+-------------+-------------+-------------+-------------+-------------+

**Refresh**

Refreshes the screen.

**Restart** [*window_manager*]

Restarts *mlvwm* or, if *window_mananger* is defined, restart into that window manager.

+-------------+-------------+-------------+-------------+-------------+
|             | **Exit**    |             | Quits       |             |
|             |             |             | *mlvwm*.    |             |
+-------------+-------------+-------------+-------------+-------------+

**Desk** [*+* | *-* | *number*]

Changes desktops to *number* or, if + or - is the argument, goes up one or down one desktop, respectively.

**NextWindow**

Switches to the next active window. Windows that are hidden or defined in SkipSelect are not chosen. This includes windows in other desktops in it’s list of windows to choose from.

**PreviousWindow**

Swtiches to the previous active window. Windows that are hidden or defined in SkipSelect are not chosen. This includes windows in other desktops in it’s list of windows to choose from.

**NextSameDeskWindow**

Switches to the next active window. Windows that are hidden or defined in SkipSelect are not chosen. Windows in other desktops are not chosen.

**PreviousSameDeskWindow**

Switches to the previous active window. Windows that are hidden or defined in SkipSelect are not chosen. Windows in other desktops are not chosen.

**ShadedUnShadeActive**

Shades or UnShades active window.

**HideActive**

Hides active window.

**HideOthers**

Hides all other windows except the active one.

**ShowAll**

All hidden windows are unhidden.

**MoveWindow**

Move a window, chosen after this command is selected.

**ResizeWindow**

Resize a window, chosen after this command is selected.

**KillWindow**

Kills a chosen window.

**SendMessage** *sequence*

A keypress is sent to the active window. The keys pressed are defined in a similar fashion to those in the ShortCut command. You specify a special key with it’s corresponding capital letter identifier and a + symbol. For instance, if you wanted to set the sequence: `Ctrl-x`, you would use `C+x`.

**Wait** [*Application name*|*Application class*]

Wait to start application.

**ShowBalloon**

This function can be bound to a key in order to show balloon.

DESCRIPTION
------------

The following commands are used to change or describe *mlvwm*'s functionality:

**Desktopnum** *num*

The number of desktops available. Defaults to 1.

**StickShade**

Shaded windows are present no matter what desktop you are on, instead of staying on a particular desktop. This is not the default behavior.

**StickHide**

Hidden windows are present no matter what desktop you are on, instead of staying on a particular desktop. This is not the default behavior. This means that if you hide a window in one desktop, and move to another, then unhide it, it will appear in that desktop, instead of the desktop it was originally in.

**ShadeMap**

When a window is unhidden, shading remains. The default is for shading to be canceled when a window is unhidden.

**DoubleClickTime** *time*

The number of milliseconds in which you must click the mouse button twice in order to register a double click.

**Compatible**

When windows are moved or resized, the border displayed is a dotted line instead of solid. This causes a slight speed decline.

**FollowToMouse**

The active window is the window the mouse is currently over. If you move the mouse away from the current window and/or over another, you lose focus in the current one. This is not set up by default.

**SlopyFocus**

It turns on FollowToMouse with the modification of not loosing focus when in the root window.

**System8**

Change to window decoration to System 8(Only Color Monitor).

**OpaqueMove**

Enable Opaque move.

**OpaqueResize**

Enable Opaque resize.

**OneClickMenu**

Click pull down menu and more one click execute selection.

**ZoomWait** *ms*

Setting Hide animation speed. Default is 10ms. The unit is ms.

**RotateDesk**

Rotate desktop number at Desk + and Desk -.

**DisplayDeskNumber**

Display window name with desktop number on window list.

**IconifyShade**

WindowShade is regarded as Inocify.

**IconifyHide**

HideWindow is regarded as Iconify.

**ScrollBarWidth** *n*

The variable scroll window is set *n* and defaults to 19 if unspecified.

**FlushMenu** *speed flashes*

Determines how fast the flashes are when you choose an option from a menu, as well as how many times it does so.

**IconPath** *path*

Specify the path *mlvwm* is to search in order to find it’s icons. Separate directories should be separated with a : and listed in the order you wish them to be searched. This needs to be defined before any references to icons are made.

**IconMenuIcon** *icon*

This is the icon to be used with the windowlist menu on right side of the menu bar.

**UseRootWin**

ignore button event on Root Window.

**UseBalloon** *str1 str2*, **Icon** *iconname*

Use balloon help. str1 is displayed as menu item when Balloon help is not displayed.

**InitFunction**
**RestartFunction**

Define the function when start and restart the mlvwm.

**MenuBarFont** *font*

The font the menu bar is to use.

**MenuFont** *font*

The font the menus are to use.

**TitleBarFont** *font*

The font on the title bars of windows.

**Read** *filename*

Reads in a separate configuration file.

**RestartPreviousState**

It allows to regenerate the screen as it was before the previous window manager was shutdown or the current window manager was restarted.

**Menu** *name* [, *options*] ... **END**

Starts a menu block for the specified *name* menu. After the name of the menu, some options may be defined as listed below to change the behavior of that menu. All lines following the Menu command are read in as menu items until an **END** statement is reached. Description of menu items will be discussed after the options.

Menu options are as follows:

**Right** - places the menu on the right side of the menu bar.

**Left** - places the menu on the left side of the menu bar. This is default.

**Icon** *icon* - assigns an icon to be displayed on the menu bar instead of a label.

**Label** *label* - assigns a label to be displayed on the menu bar instead of an icon.

**Stick** - menu label is shown any time, in spite of the designation of which application it is associated with via the MenuBar command.

**NonStick** - opposite of Stick. This is default.

Menu items are described as follows:

"label" options

Multiple options are separated by commas. Options you can choose are as follows:

**Gray** - grays out a menu item.

**Black** - makes a menu item black.

**Check** - places a check mark next to item.

**NonCheck** - doesn’t place a check mark next to item.

**Select** - makes a menu item selectable.

**NonSelect** - prevents a menu item from being selectable.

**SubMenu** *MenuName* A submenu is specified.

**Icon** *icon* - specifies an icon to place next to the menu item’s label.

**Action** *command* - performs any built in *command*.

**Swallow** *appname options* Swallows an application into the menu bar. *options* are separated by commas. *appname* should match the name of the application that will be swallowed. The following options are allowed:

**Right** - places the menu on the right side of the menu bar. This is default.

**Left** - places the menu on the left side of the menu bar.

**Action** *command* - performs any built in *command*. This is where an Exec should be performed of the application to be swallowed.

**Stick** - menu label is shown any time, in spite of the designation of which application it is associated with via the MenuBar command. This is default.

**NonStick** - opposite of Stick.

**MenuBar** *appname* ... **END**

This describes the names of the menus to be displayed, given a particular *appname* is active. The keyword **default** can be placed for *appname* to set up a menu bar for any application that does not have it’s own specific menu bar. Menus are listed one per line after the MenuBar line, and closed off with an **END** statement.

**Style** *strings* **END**

This is used to describe certain attributes of particular windows, such as decorations, MenuBars, mini-icons, and various other attributes. The wildcards, \* and ?, can be used. Lines are set up as follows:

"*appname*" *options*

Multiple *options* are separated by commas, and can be chosen from the following:

**NormalDecoration** - Places standard decorations (ie all the defaults) around a particular window.

**NoSbarH** - Horizontal scroll bar is removed.

**NoSbarV** - Vertical scroll bar is removed.

**NoResizeR** - no resize ’button’. This is automatic if both NoSbarH and NoSbarV are defined.

**NoTitle** - Removed title bar.

**NoMinMaxR** - Min/Max ’button’ is removed. Automatic when NoTitle defined.

**NoCloseR** - Close ’button’ is removed. Automatic when NoTitle defined.

**NoWinList** - Prevents window from being show on the window list.

**NoFocus** - Does not allow window to get focus.

**StayOnTop** - Window stays above all other windows on the screen.

**Sticky** - Window stays on screen even if you change desktops.

**SkipSelect** - Prevents window from getting chosen by **NextWindow**, **PreviousWindow**, **PreviousSameDeskWindow**, and **NextSameDeskWindow**.

**EnableScroll** - Activates scroll bars.

**MaxmizeScale** - The percentage the window will increase in size when it maximized.

**MiniIcon** *icon* - *icon* is used to represent that particular window.

**NoTransientDecorate** - No decorations for transient window.

**MenuBar** *menubar* - Switches the menu bar to *menubar* when that application is active.

**ShortCut** *string* END

Binds key combinations to functions. Short cuts are listed one per line in the following format:

*KeyName KeyboardModifier Command*

After all Short cuts are listed, an END statement should be placed.
KeyboardModifier’s are as follows:

**S** - Shift key
**C** - Control key
**M** - Mod1 key
**1** - Mod1 key
**2** - Mod2 key
**3** - Mod3 key
**4** - Mod4 key
**5** - Mod5 key
**A** - Any Modifier
**N** - No Modifier

FILES
------

| $XDG_CONFIG_HOME/mlvwm/mlvwmrc (Previously $HOME/.mlvwmrc)
| $MLVWMLIBDIR/system.mlvwmrc

COPYRIGHT NOTICES
------------------

This program is distributed as freeware. The copyright remains with the author.

Macintosh is a registered trademark of Apple Computer, Inc.

AUTHOR
-------

TakaC HASEGAWA *hase@rop2.hitachi-cable.co.jp*

--------------

