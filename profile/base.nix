{ config, pkgs, ... }:
{
  modules = [
    ../system/boot.nix
    ../system/locale.nix
    ../system/networking.nix
    ../system/time.nix
    ../system/sound.nix
    ../app/neovim.nix
  ];
  nix.settings.experimental-features = [ nix-command flakes ];
  nixpkgs.config.allowUnfree = true;
}
