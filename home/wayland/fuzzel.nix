{ lib, ... }:
{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        font = lib.mkForce "JetBrains Mono:size=15";
      };
    };
  };
}