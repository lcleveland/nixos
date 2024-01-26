{ config, pkgs, ... }:
{
  imports = [ inputs.auto-cpufreq.nixosModules.default ];
  programs.auto-cpufreq.enable = true;
}
