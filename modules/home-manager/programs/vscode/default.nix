{
  inputs,
  lib,
  config,
  pkgs,
  ...
}:
{
  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs; [
    #visual studio code is a pain in the ass for whatever reason
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        ms-vscode.cpptools
        ms-vscode.cmake-tools
        llvm-vs-code-extensions.vscode-clangd
        hars.cppsnippets
        ms-dotnettools.csharp
        ms-dotnettools.csdevkit
        vscjava.vscode-java-pack
        rust-lang.rust-analyzer
        tamasfe.even-better-toml
        bbenoist.nix
      ];
    })
  ];
}
