{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    neofetch
    prismlauncher
    sony-headphones-client
    spotify
    steam
    telegram-desktop
    inputs.zen-browser.packages."${system}".default   
  ];
}