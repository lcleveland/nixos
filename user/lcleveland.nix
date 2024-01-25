{ config, pkgs, home-manager, ... }:
{
  users.users.lcleveland = {
    isNormalUser = true;
    description = "Lyle Cleveland";
    extraGroups = [ "networkmanager" "wheel" ];
  };
  let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
  in
  {
  imports = [
    (import "${home-manager}/nixos")
  ];

  home-manager.users.my_username = {
    /* The home.stateVersion option does not have a default and must be set */
    home.stateVersion = "18.09";
    /* Here goes the rest of your home-manager config, e.g. home.packages = [ pkgs.foo ]; */
  };
};
home-manager.nixosModules.home-manager = {
home-manager.users.lcleveland = {
home.stateVersion = "18.09";
};
};
}
