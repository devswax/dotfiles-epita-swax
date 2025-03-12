while IFS= read -r line; do
    echo "installing $line"
    nix profile install "nixpkgs#$line"
done < packages.txt
nix profile install --impure --expr 'with builtins.getFlake("flake:nixpkgs"); legacyPackages.x86_64-linux.nerdfonts.override { fonts = ["JetBrainsMono"]; }'
