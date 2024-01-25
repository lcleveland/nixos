{ config, pkgs, ... }:
{
  imports = [
    ../base.nix
    ../../system/wm/kde_plasma.nix
    ../../system/kb/colemak.nix
  ];
}
