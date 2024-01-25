{ config, pkgs, ... }:
{
  imports = [
    /etc/nixos/hardware-configuration.nix
    ../system/boot.nix
    ../system/locale.nix
    ../system/networking.nix
    ../system/time.nix
    ../system/sound.nix
    ../app/neovim.nix
    ../system/wm/kde_plasma.nix
    ../user/lcleveland.nix
    ../system/state_version.nix
  ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
}
