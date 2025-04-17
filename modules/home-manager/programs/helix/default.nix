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
  languages.language = [
    {
      name = "nix";
      auto-format = true;
      formatter.command = "${pkgs.nixfmt}/bin/nixfmt";
    }
    {
      name = "rust";
      auto-format = true;
      formatter.command = "${pkgs.rust-analyzer}/bin/rust-analyzer";
    }
  ];
};

}
