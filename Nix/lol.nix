with import <nixpkgs> {};

let
  lolcatify = package : name : pkgs.writeShellScriptBin "lol-${name}" ''
    ${package}/bin/${name} "$@" | ${pkgs.lolcat}/bin/lolcat
  '';
in
stdenv.mkDerivation rec {
  name = "lol-environment";
  buildInputs = [
    (lolcatify pkgs.figlet "figlet")
    (lolcatify pkgs.cowsay "cowsay")
  ];
}
