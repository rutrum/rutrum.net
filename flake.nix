{
  description = "rutrum.net";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    typeset = {
      url = "github:rutrum/typeset";
      flake = false;
    };
  };
  outputs = { self, nixpkgs, typeset }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
    {
      packages.${system}.default = pkgs.stdenv.mkDerivation {
        pname = "rutrum.net";
        version = "0.1.0";
        src = ./.;
        nativeBuildInputs = with pkgs; [ zola ];
        buildPhase = ''
          mkdir -p themes
          ln -s ${typeset} themes/typeset
          zola build
        '';
        installPhase = "cp -r public $out";
      };
      
      devShells.${system}.default = pkgs.mkShell {
        name = "rutrum.net";
        buildInputs = with pkgs; [
            zola
            just
            microserver
        ];
        shellHook = ''
          mkdir -p themes
          ln -sfn ${typeset} themes/typeset
        '';
    };
  };
}
