{ configs, pkgs, ... }:
{
  imports = [
    ../base.nix
    ../../system/wm/kde_plasma.nix
  ];
}
