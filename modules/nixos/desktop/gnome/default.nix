{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  services.xserver.enable = true;

  # enable bluetooth and enable compatability with pulseaudio  
  hardware.bluetooth.enable = true;  
  # GNOME SHIT 
  
  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  
  environment.gnome.excludePackages = with pkgs; [
    epiphany # the fuckass gnome web browser </3
  ];
  
  #wayland with nvidia support
  services.xserver.displayManager.gdm.wayland = true;
  #services.xserver.displayManager.gdm.nvidiaWayland = true;
}
