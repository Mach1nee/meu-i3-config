#!/bin/bash

# Atualiza o sistema
sudo apt update && sudo apt upgrade -y

# Instala o Alacritty
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt update
sudo apt install alacritty -y

# Cria o diretório de configuração se não existir
mkdir -p ~/.config/alacritty

# Cria o arquivo alacritty.toml com as configurações fornecidas
cat <<EOL > ~/.config/alacritty/alacritty.toml
live_config_reload = true

[bell]
animation = "EaseOutExpo"
color = "0xff3334"
duration = 0

[colors]
draw_bold_text_with_bright_colors = false

[colors.bright]
black = "0x666666"
blue = "0x7aa6da"
cyan = "0x54ced6"
green = "0x9ec400"
magenta = "0xb77ee0"
red = "0xff3334"
white = "0xffffff"
yellow = "0xe7c547"

[colors.normal]
black = "0x000000"
blue = "0x7aa6da"
cyan = "0x70c0ba"
green = "0xb9ca4a"
magenta = "0xc397d8"
red = "0xd54e53"
white = "0xeaeaea"
yellow = "0xe6c547"

[colors.primary]
background = "0x000000"
foreground = "0xff3334"

[cursor]
style = "Underline"

[font]
size = 13.0

[font.bold]
family = "monospace"

[font.glyph_offset]
x = 0
y = 0

[font.italic]
family = "monospace"

[font.normal]
family = "monospace"
style = "monospace"

[font.offset]
x = 0
y = 0

[[keyboard.bindings]]
action = "Paste"
key = "Paste"

[[keyboard.bindings]]
action = "Copy"
key = "Copy"

[[keyboard.bindings]]
action = "ClearLogNotice"
key = "L"
mods = "Control"

[[keyboard.bindings]]
chars = "\f"
key = "L"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001BOH"
key = "Home"
mode = "AppCursor"

[[keyboard.bindings]]
chars = "\u001B[H"
key = "Home"
mode = "~AppCursor"

[[keyboard.bindings]]
chars = "\u001BOF"
key = "End"
mode = "AppCursor"

[[keyboard.bindings]]
chars = "\u001B[F"
key = "End"
mode = "~AppCursor"

[[keyboard.bindings]]
action = "ScrollPageUp"
key = "PageUp"
mode = "~Alt"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[5;2~"
key = "PageUp"
mode = "Alt"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[5;5~"
key = "PageUp"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[5~"
key = "PageUp"

[[keyboard.bindings]]
action = "ScrollPageDown"
key = "PageDown"
mode = "~Alt"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[6;2~"
key = "PageDown"
mode = "Alt"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[6;5~"
key = "PageDown"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[6~"
key = "PageDown"

[[keyboard.bindings]]
chars = "\u001B[Z"
key = "Tab"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u007F"
key = "Back"

[[keyboard.bindings]]
chars = "\u001B\u007F"
key = "Back"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[2~"
key = "Insert"

[[keyboard.bindings]]
chars = "\u001B[3~"
key = "Delete"

[[keyboard.bindings]]
chars = "\u001B[1;2D"
key = "Left"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[1;5D"
key = "Left"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[1;3D"
key = "Left"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[D"
key = "Left"
mode = "~AppCursor"

[[keyboard.bindings]]
chars = "\u001BOD"
key = "Left"
mode = "AppCursor"

[[keyboard.bindings]]
chars = "\u001B[1;2C"
key = "Right"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[1;5C"
key = "Right"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[1;3C"
key = "Right"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[C"
key = "Right"
mode = "~AppCursor"

[[keyboard.bindings]]
chars = "\u001BOC"
key = "Right"
mode = "AppCursor"

[[keyboard.bindings]]
chars = "\u001B[1;2A"
key = "Up"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[1;5A"
key = "Up"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[1;3A"
key = "Up"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[A"
key = "Up"
mode = "~AppCursor"

[[keyboard.bindings]]
chars = "\u001BOA"
key = "Up"
mode = "AppCursor"

[[keyboard.bindings]]
chars = "\u001B[1;2B"
key = "Down"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[1;5B"
key = "Down"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[1;3B"
key = "Down"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[B"
key = "Down"
mode = "~AppCursor"

[[keyboard.bindings]]
chars = "\u001BOB"
key = "Down"
mode = "AppCursor"

[[keyboard.bindings]]
chars = "\u001BOP"
key = "F1"

[[keyboard.bindings]]
chars = "\u001BOQ"
key = "F2"

[[keyboard.bindings]]
chars = "\u001BOR"
key = "F3"

[[keyboard.bindings]]
chars = "\u001BOS"
key = "F4"

[[keyboard.bindings]]
chars = "\u001B[15~"
key = "F5"

[[keyboard.bindings]]
chars = "\u001B[17~"
key = "F6"

[[keyboard.bindings]]
chars = "\u001B[18~"
key = "F7"

[[keyboard.bindings]]
chars = "\u001B[19~"
key = "F8"

[[keyboard.bindings]]
chars = "\u001B[20~"
key = "F9"

[[keyboard.bindings]]
chars = "\u001B[21~"
key = "F10"

[[keyboard.bindings]]
chars = "\u001B[23~"
key = "F11"

[[keyboard.bindings]]
chars = "\u001B[24~"
key = "F12"

[[keyboard.bindings]]
chars = "\u001B[1;2P"
key = "F1"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[1;2Q"
key = "F2"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[1;2R"
key = "F3"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[1;2S"
key = "F4"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[15;2~"
key = "F5"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[17;2~"
key = "F6"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[18;2~"
key = "F7"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[19;2~"
key = "F8"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[20;2~"
key = "F9"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[21;2~"
key = "F10"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[23;2~"
key = "F11"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[24;2~"
key = "F12"
mods = "Shift"

[[keyboard.bindings]]
chars = "\u001B[1;5P"
key = "F1"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[1;5Q"
key = "F2"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[1;5R"
key = "F3"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[1;5S"
key = "F4"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[15;5~"
key = "F5"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[17;5~"
key = "F6"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[18;5~"
key = "F7"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[19;5~"
key = "F8"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[20;5~"
key = "F9"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[21;5~"
key = "F10"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[23;5~"
key = "F11"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[24;5~"
key = "F12"
mods = "Control"

[[keyboard.bindings]]
chars = "\u001B[1;6P"
key = "F1"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[1;6Q"
key = "F2"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[1;6R"
key = "F3"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[1;6S"
key = "F4"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[15;6~"
key = "F5"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[17;6~"
key = "F6"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[18;6~"
key = "F7"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[19;6~"
key = "F8"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[20;6~"
key = "F9"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[21;6~"
key = "F10"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[23;6~"
key = "F11"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[24;6~"
key = "F12"
mods = "Alt"

[[keyboard.bindings]]
chars = "\u001B[1;3P"
key = "F1"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[1;3Q"
key = "F2"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[1;3R"
key = "F3"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[1;3S"
key = "F4"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[15;3~"
key = "F5"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[17;3~"
key = "F6"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[18;3~"
key = "F7"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[19;3~"
key = "F8"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[20;3~"
key = "F9"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[21;3~"
key = "F10"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[23;3~"
key = "F11"
mods = "Super"

[[keyboard.bindings]]
chars = "\u001B[24;3~"
key = "F12"
mods = "Super"

[[keyboard.bindings]]
chars = """

"""
key = "NumpadEnter"

[mouse]
hide_when_typing = false

[[mouse.bindings]]
action = "PasteSelection"
mouse = "Middle"

[scrolling]
history = 10000
multiplier = 3

[window]
decorations = "none"
dynamic_padding = false
opacity = 0.5

[window.dimensions]
columns = 100
lines = 85

[window.padding]
x = 20
y = 20
EOL

# Informa que a instalação foi concluída
echo "Alacritty instalado e configurado com sucesso!"