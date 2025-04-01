{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  programs.nh = {
    enable = true;
  };
}