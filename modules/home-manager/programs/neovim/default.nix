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
    enableManpages = true;
    settings = {
      vim = {
        enableLuaLoader = true;
        options = {
          tabstop = 4;
          shiftwidth = 4;

        };
      
        
        theme = {
          enable = true;
          name = "catppuccin";
          style = "macchiato";
        };
        
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        treesitter = {
          enable = true;
          addDefaultGrammars = true;
        };
        
        lazy.plugins = {
          nvim-tree-lua = {
            package = "nvim-tree-lua";
            setupModule = "nvim-tree";
          };
        };

        
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
