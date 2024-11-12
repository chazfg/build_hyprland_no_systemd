#!/bin/bash
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DNO_SYSTEMD:STRING=true -B build -G Ninja
cmake --build ./build --config Release --target all
sudo cmake --install ./build
