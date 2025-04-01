{ 
  inputs,
  hostname,
  nixosModules,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    "${nixosModules}/common"
    "${nixosModules}/desktop/gnome"
    "${nixosModules}/settings/nvidia-optimus"
  ];

  networking.hostName = hostname;
}