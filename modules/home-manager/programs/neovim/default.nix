{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    neovim
  ];
  
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        options = {
          tabstop = 4;
        };
      
        
        theme = {
          enable = true;
          name = "catppuccin";
          style = "macchiato";
        };
        
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        
        languages = {
          enableLSP = true;
          enableTreesitter = true;
          
          nix.enable = true;
          rust.enable = true;
          clang.enable = true;
          markdown.enable = true;
        };
      };
    };
  };
}