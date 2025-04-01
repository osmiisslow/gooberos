{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: let
  assets = ../../../../assets;
 in {
  home.packages = with pkgs; [
    gnomeExtensions.worksets
    gnomeExtensions.dash-to-dock
    gnomeExtensions.compiz-windows-effect
    gnomeExtensions.appindicator
    gnomeExtensions.pop-shell
    gnomeExtensions.blur-my-shell
    gnomeExtensions.just-perfection
    gnomeExtensions.coverflow-alt-tab
    gnomeExtensions.media-controls
    gnomeExtensions.open-bar
    gnomeExtensions.space-bar
    gnomeExtensions.top-bar-organizer
    gnomeExtensions.tray-icons-reloaded
    gnomeExtensions.vitals
    gnome-tweaks
    gnome-extension-manager
  ];

  dconf.settings = {
    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = [
        "appindicatorsupport@rgcjonas.gmail.com"
        "blur-my-shell@aunetx"
        "CoverflowAltTab@palatis.blogspot.com"
        "dash-to-dock@micxgx.gmail.com"
        "just-perfection-destkop@just-perfection"
        "mediacontrols@cliffniff.githubcom"
        "openbar@neuromorph"
        "pop-shell@system76.com"
        "space-bar@luchrioh"
        "top-bar-organizer@julian.gse.jsts.xyz"
        "Vitals@CoreCoding.com"
        "worksets@blipk.xyz"
      ];
    };
    
    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file://${assets}/wallpapers/rainbow-cat.png";
    };
  };
}