{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  programs.helix = {
  enable = true;
  settings = {
  };
  languages = with pkgs; {
    language-server = {
      rust-analyzer = {
        command = "${rust-analyzer}/bin/rust-analyzer";
      };
    };
  };
};

}
