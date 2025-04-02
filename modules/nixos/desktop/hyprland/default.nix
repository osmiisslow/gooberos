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
  
  # HYPRLAND
  services.displayManager.sddm.package = pkgs.kdePackages.sddm;
  services.displayManager.sddm.enable = true; 
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  
  environment.sessionVariables = {
    # on the case of invisible cursors
    WLR_NO_HARDWARE_CURSORS = "1";
    # Electron apps to use wayland instead
    NIXOS_OZONE_WL = "1";
  };

  # needed packages for hyprland
  environment.systemPackages = with pkgs; [
    swww # wallpaper daemon
    kitty # for the terminal
    #(waybar.overrideAttrs (oldAttrs: {
    #    mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
    #  })
    #) # top bar for hyprland
    dunst # notification daemon
    libnotify # needed for dunst to work
    rofi-wayland # menu bar
    wofi
    networkmanagerapplet # for waybar :3   
    blueman # applet
    hyprlock # need to lock my screen yknow
    pcmanfm # file manager
     
    # screenshot utilities
    grim
    slurp
    wl-clipboard
    grimblast
  ];
}
