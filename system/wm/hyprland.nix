{ config, pkgs, hyprland, ... }:
{
  programs.hyprland = {
    enable = true;
    package = hyprland.packages.${pkgs.system}.hyprland;
  };
  services.xserver.enable = true;
  services.xserver.displayManager.sddm.enable = true;
}
