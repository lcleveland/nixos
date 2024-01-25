{ config, pkgs, home-manager, ... }:
{
  users.users.lcleveland = {
    isNormalUser = true;
    description = "Lyle Cleveland";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
