{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    (discord.override {
      withVencord = true;
    })
    legcord
  ];
}
