{ config, pkgs, ... }:
{
  modules = [
    ../system/boot.nix
    ../system/locale.nix
    ../system/networking.nix
    ../system/time.nix
    ../system/sound.nix
    ../app/neovim.nix
    ../system/wm/kde_plasma.nix
    ../user/lcleveland.nix
  ];
  nixpkgs.hostPlatform.system = "x86_64-linux";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
}
