  users.users.${userSettings.username} = {
    isNormalUser = true;
    description = "Jacob Vandegrift";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };