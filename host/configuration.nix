let
  user = rec {
    name = "rpaulson";
    value = {
      password = "rp";
      extraGroups = [ "networkmanager" "wheel" ];
      home = "/home/${user.name}";
      isNormalUser = true;
    };
  };
in
{
  users = {
    extraUsers = builtins.listToAttrs [ user ];
  };
}