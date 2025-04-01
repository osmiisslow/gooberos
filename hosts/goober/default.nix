{ 
  inputs,
  hostname,
  nixosModules,
  ...
}: {
  imports = [
    ./hardware-configuartion.nix
    "${nixosModules}/common"
    "${nixosModules}/desktop/gnome"
    "${nixosModules}/settings/nvidia-optimus"
  ];

  networking.hostName = hostname;
}