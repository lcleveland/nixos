{ config, pkgs, ... }:
{
  networking.hostName = "nixos";
  networking.networkManager.enable = true;
}
