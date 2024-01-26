{ config, pkgs, ... }:
{
  imports = [
    ../base.nix
    ../../system/login_manager/sddm.nix
    ../../system/wm/hyprland.nix
    ../../system/kb/colemak.nix
  ];
}
