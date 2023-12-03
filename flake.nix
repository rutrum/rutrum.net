{
  description = "rutrum.net";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
  };
  outputs = { self, nixpkgs }: 
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
        buildPhase = "zola build";
        installPhase = "cp -r public $out";
      };
      
      devShells.${system}.default = pkgs.mkShell {
        name = "rutrum.net";
        buildInputs = with pkgs; [
            zola
            just
        ];
    };
  };
}
