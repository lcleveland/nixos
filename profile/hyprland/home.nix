{ config, pkgs, ... }:
{
  imports = [
    ../base.nix
    ../../system/wm/hyprland.nix
    ../../system/kb/colemak.nix
  ];
}
