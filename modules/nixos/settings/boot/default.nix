{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # BOOT SETTINGS
  boot.loader = {
    grub = {
      efiSupport = true;
      device = "nodev";
    };
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
  };
  # we're themeing grub because why not
  catppuccin.grub = {
    enable = true;
    flavor = "macchiato";
  };
  
  # linux kernel shit
  boot.kernelPackages = pkgs.linuxPackages_zen;
}