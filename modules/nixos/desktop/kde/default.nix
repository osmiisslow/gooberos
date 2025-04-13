{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  services.xserver = {
    enable = true;
    libinput.enable = true;
    displayManager.sddm = {
      package = pkgs.kdePackages.sddm;
      wayland.enable = true;
      enable = true;
    };
    desktopManager.plasma6.enable = true;
  };
  environment.systemPackages = with pkgs; [
    kitty # terminal replace
    vlc # we should probably have this .w.
  ];
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
  ];
}
