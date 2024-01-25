{ config, pkgs, ... }:
{
  modules = [
    ../system/boot.nix
    ../system/locale.nix
    ../system/networking.nix
    ../system/time.nix
    ../system/sound.nix
  ];
  nix.settings.experimental-features = [ nix-command flakes ];
}
