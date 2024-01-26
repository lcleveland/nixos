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
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
}
