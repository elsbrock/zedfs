let
  user = rec {
    name = "else";
    value = {
      password = "else";
      extraGroups = [ "wheel" ];
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