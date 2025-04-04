{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ 
        "git"
        "thefuck"
        "direnv"
      ];
      theme = "duellj";
    };
  };
  home.packages = with pkgs; [
    thefuck   
  ];
}
