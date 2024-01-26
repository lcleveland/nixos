{ config, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.auto-cpufreq
  ];
}
