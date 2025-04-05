{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    #for bevy :3
    udev alsa-lib vulkan-loader
    xorg.libX11 xorg.libXcursor xorg.libXi xorg.libXrandr # To use the x11 feature
    libxkbcommon wayland # To use the wayland feature

    # for c/cpp, will add more
    SDL
    SDL2
    sdl3
  ];
}