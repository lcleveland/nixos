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
    ../app/git.nix
    ../app/neovim.nix
  ];
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
}
