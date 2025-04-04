{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    # rust
    cargo
    rustco use the x11 feature
    libxkbcommon wayland # To use the wayland feature
  ];
}
