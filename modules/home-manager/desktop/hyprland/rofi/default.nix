{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: let
  assets = ../../../../../assets;
in
{
  home.file.".config/rofi/catppuccin-default.rasi".source="${assets}/rofi-themes/catppuccin-default.rasi";
  home.file.".config/rofi/catppuccin-macchiato.rasi".source="${assets}/rofi-themes/catppuccin-macchiato.rasi";
  home.file.".config/rofi/config.rasi".source = ./config.rasi;
}