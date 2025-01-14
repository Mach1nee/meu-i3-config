#!/bin/bash

# Atualiza o sistema
sudo apt update && sudo apt upgrade -y

# Instala dependências necessárias
sudo apt install -y polybar i3 i3status

# Cria o diretório de configuração se não existir
mkdir -p ~/.config/polybar

# Cria o arquivo config do Polybar com as configurações fornecidas
cat <<EOL > ~/.config/polybar/config
[colors]
background = #282c34
foreground = #c0caf5
primary = #ff79c6
secondary = #bd93f9
alert = #ff5555

[bar/mybar]
width = 100%
height = 27
background = ${colors.background}
foreground = ${colors.foreground}
font-0 = "Hack Nerd Font:size=10;2"
font-1 = "Font Awesome 5 Free:size=10;3"

modules-left = i3
modules-center = date
modules-right = cpu memory
status_command = i3status

[module/i3]
type = internal/i3
format = <label-state> <label-mode>
index-sort = true
wrapping-scroll = false

label-focused = %index% %name%
label-focused-background = ${colors.primary}
label-focused-foreground = ${colors.background}

label-unfocused = %index% %name%
label-unfocused-background = ${colors.background}
label-unfocused-foreground = ${colors.foreground}

[module/date]
type = internal/date
interval = 1

date = %H:%M
date-alt = %Y-%m-%d %H:%M:%S

label = %date%
label-foreground = ${colors.primary}

[module/cpu]
type = internal/cpu
interval = 2
format-prefix = "CPU: "
format-prefix-foreground = ${colors.foreground}
format-foreground = ${colors.primary}

[module/memory]
type = internal/memory
interval = 2
format-prefix = "MEM: "
format-prefix-foreground = ${colors.foreground}
format-foreground = ${colors.secondary}
EOL

# Cria um arquivo de execução do Polybar
cat <<EOL > ~/.config/polybar/launch.sh
#!/bin/bash

# Termina qualquer instância existente do Polybar
killall -q polybar

# Inicia o Polybar com o arquivo de configuração
polybar mybar &
EOL

# Torna o script executável
chmod +x ~/.config/polybar/launch.sh

# Informa que a instalação foi concluída
echo "Polybar instalado e configurado com sucesso! Execute '~/.config/polybar/launch.sh' para iniciar."
