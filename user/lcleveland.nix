{ config, pkgs, ... }:
{
  users.user.lcleveland = {
    isNormalUser = true;
    description = "Lyle Cleveland";
    extraGroups = [ networkmanager wheel ];
  };
}
