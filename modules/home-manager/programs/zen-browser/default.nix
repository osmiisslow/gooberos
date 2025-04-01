{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; {
    inputs.zen-browser.packages."${system}".default
  }
}