{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
     # c development bullshit
     SDL
     SDL2
     sdl3
     gcc
     cmake
     gnumake
     clang
     clang-tools
     
  ];
}
