{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # enable stylix 
  /*
  stylix.enable = true;
  stylix.image = ../assets/wallpapers/rainbow-cat.png;
  stylix.base16Scheme = ../assets/base16/macchiato.yaml;
  # disable conflicting issues with grub
  stylix.targets.grub.enable = false;
  */

  catppuccin.enable = true;
  catppuccin.flavor = "macchiato";
  catppuccin.accent = "maroon";

  # font bullshit 
  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      monospace = [ "Caskaydia Cove Nerd Font"];
      serif = [ "DejaVu Sans" ];
      sansSerif = [ "Dejavu Sans " ];
    };
  };
  
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
    font-awesome
    dejavu_fonts
    liberation_ttf
    fira-code
    fira-code-symbols
    nerd-fonts.jetbrains-mono
    nerd-fonts.symbols-only
    nerd-fonts.hack
    nerd-fonts.caskaydia-cove
    nerd-fonts.caskaydia-mono
    nerd-fonts.jetbrains-mono
    nerd-fonts.ubuntu
    nerd-fonts.ubuntu-sans
    nerd-fonts.ubuntu-mono
  ];
}
