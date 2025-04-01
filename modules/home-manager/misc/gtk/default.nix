{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {

  gtk.enable = true;
  catppuccin = {
    enable = true;
    flavor = "macchiato";
    accent = "maroon";
  };
  
  catppuccin.gtk = {
    enable = true;
    flavor = "macchiato";
    accent = "maroon";
    gnomeShellTheme = true;
    icon = {
      enable = true;
      flavor = "macchiato";
      accent = "maroon";
    };
  };
  
  xdg.configFile = {
    "gtk-4.0/assets".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/assets";
    "gtk-4.0/gtk.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk.css";
    "gtk-4.0/gtk-dark.css".source = "${config.gtk.theme.package}/share/themes/${config.gtk.theme.name}/gtk-4.0/gtk-dark.css";
  }; 

}
