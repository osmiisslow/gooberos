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
    rustc
  ];
}
