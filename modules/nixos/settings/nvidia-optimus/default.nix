{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # Enable OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Load nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"];
  # xwayland support
  programs.xwayland.enable = true;
  #append to kernalParams
  boot.kernelParams = [ "nvidia_drm.fbdev=1" ]; 
  hardware.nvidia = {

    # Modesetting is required.
    modesetting.enable = true;

    # Nvidia power management. Experimental, and can cause sleep/suspend to fail.
    # Enable this if you have graphical corruption issues or application crashes after waking
    # up from sleep. This fixes it by saving the entire VRAM memory to /tmp/ instead 
    # of just the bare essentials.
    powerManagement.enable = false;

    # Fine-grained power management. Turns off GPU when not in use.
    # Experimental and only works on modern Nvidia GPUs (Turing or newer).
    powerManagement.finegrained = false;

    # Use the NVidia open source kernel module (not to be confused with the
    # independent third-party "nouveau" open source driver).
    # Support is limited to the Turing and later architectures. Full list of 
    # supported GPUs is at: 
    # https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus 
    # Only available from driver 515.43.04+
    open = false;

    # Enable the Nvidia settings menu,
	# accessible via `nvidia-settings`.
    nvidiaSettings = true;

    # Optionally, you may need to select the appropriate driver version for your specific GPU.
    package = config.boot.kernelPackages.nvidiaPackages.beta;
    
  
    #setting up prime
    prime = {
      #sync.enable = true;
      offload.enable = true;
      offload.enableOffloadCmd = true;

      # may need changing based on system. please do not blindly trust this.
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };
  
  /*
  specialisation = {
    integrated.configuration = {
      system.nixos.tags = [ "integrated" ];
      hardware.nvidia.prime = {
        sync.enable = lib.mkForce false;
        offload = {
          enable = lib.mkForce true;
          enableOffloadCmd = lib.mkForce true;
        };
      };
    };
  };
  */
  environment.systemPackages = with pkgs; [
    mesa-demos
  ];
  services.switcherooControl.enable = true;
}
