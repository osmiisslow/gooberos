{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  services.flatpak.packages = [
    "com.github.tchx84.Flatseal"
  ];
}