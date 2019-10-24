# Exporting path for applications that need specific ENV variables to work
# natively on Wayland
export PATH_OLD="$PATH"
export PATH="$WAYLAND_DOT/bin:$PATH"
# QT5 Wayland
export QT_QPA_PLATFORM=wayland-egl
# SDL Wayland
export SDL_VIDEODRIVER=wayland
# Java non-reparenting windows manager bug, see https://bugs.openjdk.java.net/browse/JDK-8058197
export _JAVA_AWT_WM_NONREPARENTING=1
