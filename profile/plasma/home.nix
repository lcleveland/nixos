{ config, pkgs, ... }:
{
  imports = [
    ../base.nix
    ../../system/login_manager/sddm.nix
    ../../system/wm/kde_plasma.nix
    ../../system/kb/colemak.nix
  ];
}
