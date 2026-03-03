{
  description = "rutrum.net";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
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
        src = builtins.fetchGit {
          url = ./.;
          submodules = true;
        };
        nativeBuildInputs = with pkgs; [ zola ];
        buildPhase = "zola build";
        installPhase = "cp -r public $out";
      };
      
      devShells.${system}.default = pkgs.mkShell {
        name = "rutrum.net";
        buildInputs = with pkgs; [
            zola
            just
            microserver
        ];
    };
  };
}
