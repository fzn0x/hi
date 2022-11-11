let
  addString = { x ? "", y ? ""}: x + y;
in
  addString { x = "nix is number "; y = builtins.toString 1; }
