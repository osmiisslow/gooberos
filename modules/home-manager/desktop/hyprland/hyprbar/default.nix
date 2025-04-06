{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: let 
  assets = ../../../../../assets;
in{
  programs.hyprpanel = {
    enable = true;

    #systemd.enable = true;

    hyprland.enable = true;

    overwrite.enable = true;

    # Configure and theme almost all options from the GUI.
    # Options that require '{}' or '[]' are not yet implemented,
    # except for the layout above.
    # See 'https://hyprpanel.com/configuration/settings.html'.
    # Default: <same as gui>
    settings = {
      theme.name = "catppuccin_macchiato_split";
      layout = {
        "bar.layouts" = {
          "0" = {
            left = [ "dashboard" "workspaces" ];
            middle = [ "media" ];
            right = [ "volume" "systray" "notifications" ];
          };
        };
      };
      bar.launcher.autoDetectIcon = true;
      bar.workspaces.show_icons = true;

      menus.clock = {
        time = {
          military = true;
          hideSeconds = true;
        };
        weather.unit = "metric";
      };

      menus = {
        dashboard = {
          shortcuts = {
            left = {
              shortcut1.command = "zen";
              shortcut2.command = "spotify";
            };
          };
          powermenu = {
            avatar = {
              image = "${assets}/profiles/wires.jpg";
            };
          };
        };
      };
      /*
      wallpaper = {
        enable = true;
        image = "${assets}/wallpapers/nord-ign_sunset_valley.png";
        pywal = true;
      }; */

      menus.dashboard.directories.enabled = false;
      menus.dashboard.stats.enable_gpu = true;

      theme.bar.transparent = true;

      theme.font = {
        name = "Caskaydia Cove Nerd Font";
        size = "16px";
      };
    };
  };
}