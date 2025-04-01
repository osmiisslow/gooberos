{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: { 
  # enable flatpaks
  services.flatpak.enable = true;
  
  # install sober(roblox lmao) and other flatpaks(if needed)
  services.flatpak.packages = [
    "org.vinegarhq.Sober"
    "com.github.tchx84.Flatseal"
  ];
}