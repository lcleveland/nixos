{ config, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.auto-cpufreq
  ];
  services.auto-cpufreq.enable = true;
}
