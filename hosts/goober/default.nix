{ 
  inputs,
  hostname,
  nixosModules,
  desktop,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    "${nixosModules}/common"
    "${nixosModules}/desktop/${desktop}"
    "${nixosModules}/settings/nvidia-optimus"
  ];

  networking.hostName = hostname;
}