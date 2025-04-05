{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
     # c development bullshit
     gcc
     cmake
     gnumake
     clang
     clang-tools
     
  ];
}
