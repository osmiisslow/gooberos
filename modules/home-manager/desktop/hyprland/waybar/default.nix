{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  home.file = {
    ".config/waybar/macchiato.css".source=./styles/macchiato.css;
  };

  programs.waybar = {
    enable = true;
    settings = {
      mainbar = {
        modules-left = [ "hyprland/workspaces" "hyprland/window" ];
        modules-center = [ "clock" ];
        modules-right = [
          "network"
          "cpu"
          "memory"
          "temperature"
          "pulseaudio"
          "battery"
          "backlight/slider"
          "tray"
        ];
        pulseaudio = {
          format = "{volume}% {icon} {format_source}";
          format-bluetooth = "{volume}% {icon} {format_source}";
          format-bluetooth-muted = " {icon} {format_source}";
          format-muted = " {format_source}";
          format-source = "{volume}% ";
          format-source-muted = "";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [ "" "" "" ];
          };
          ignored-sinks = [ "Easy Effects Sink" ];
        };

        clock = {
          tooltip-format = ''
            <big>{:%Y %B}</big>
            <tt><small>{calendar}</small></tt>'';
          format-alt = "{:%Y-%m-%d}";
        };

        cpu = {
          interval = 1;
          format = "{usage}% ";
          tooltip = false;
        };

        memory = {
          interval = 5;
          format = "{}% ";
        };

        network = {
          interval = 1;
          format-wifi = "{essid} ({signalStrength}%) {bandwidthDownBytes} ";
          format-ethernet = "{ipaddr}/{cidr} {bandwidthDownBytes} ";
          tooltip-format = "{ifname} via {gwaddr} ";
          format-linked = "{ifname} (No IP) ";
          format-disconnected = "Disconnected ⚠";
          format-alt = "{ifname}: {ipaddr}/{cidr}";
        };

        tray = { spacing = 10; };

        battery = {
          interval = 10;
          states = { warning = 15; };
        };
      };
    };
    style=lib.mkForce ./styles/style.css;
  };
}