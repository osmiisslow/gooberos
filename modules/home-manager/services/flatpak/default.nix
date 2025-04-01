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
    {
      flatpakref = "https://sober.vinegarhq.org/sober.flatpakref";
      sha256="1pj8y1xhiwgbnhrr3yr3ybpfis9slrl73i0b1lc9q89vhip6ym2l";
    }
    "com.github.tchx84.Flatseal"
  ];
}