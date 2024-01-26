{ config, pkgs, home-manager, ... }:
{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ../system/boot.nix
    ../system/locale.nix
    ../system/networking.nix
    ../system/time.nix
    ../system/sound.nix
    ../user/lcleveland.nix
    ../system/state_version.nix
    ../system/home_manager.nix
    ../system/app/git.nix
    ../system/app/neovim.nix
    ../system/app/auto_cpufreq.nix
  ];
  nix.settings = {
    substituters = [ "https://hyprland.cachix.org" ];
    trusted-public-keys = [ "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
    experimental-features = [ "nix-command" "flakes" ];
  };
  nixpkgs.config.allowUnfree = true;
}
