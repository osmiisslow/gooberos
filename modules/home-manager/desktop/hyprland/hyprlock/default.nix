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
  home.file.".config/hypr/hyprlock.conf".source=./hyprlock.conf;
  home.file.".config/hypr/macchiato.conf".source=./macchiato.conf;
}