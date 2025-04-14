{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  hardware.bluetooth.enable = true;
  services = {
    xserver = {
      enable = true;
      libinput.enable = true;
    };
    displayManager.sddm = {
      wayland.enable = true;
      enable = true;
    };
    desktopManager.plasma6.enable = true;
  };
  environment.systemPackages = with pkgs; [
    kitty # terminal replace
    vlc # we should probably have this .w.
    blueman # bluetooth
  ];
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
  ];
}
