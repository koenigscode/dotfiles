#!/bin/bash

dconf dump / > ./config/dconf_dump
cp ~/start_prometheus_grafana.sh ./scripts/
cp /etc/fstab ./config/
cp ~/.zshrc ./config/
cp ~/.xsessionrc ./config/
cp ~/.vimrc ./config/
cp ~/vim_setup.sh ./config/
cp ~/.hyper.js ./config/
cp -r ~/.config/terminator/ ./config/
cp -r ~/.config/i3/ ./config/
cp -r ~/.config/polybar/ ./config/
cp ~/.alacritty.yml ./config/
cp ~/.Xresources ./config/

echo \`\`\` > readme.md
screenfetch -n |sed 's/\x1B\[[0-9;]*m//g' >> readme.md
echo \`\`\` >> readme.md
