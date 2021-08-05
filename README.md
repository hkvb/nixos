# hkvb/nixos

Repository of nixos/nix based images.

## hkvb/nixos/plutus

nixos/nix image prepared for Plutus development.

Instantiation:

```bash
sudo docker run -it -p 8009:8009 -p 8010:8010 -v hkvb_nixos_plutus:/nix -v $(pwd):/plutus hkvb/nixos.plutus
```
Get the full help by executing:

```bash
sudo docker run hkvb/nixos.plutus --help
```
It uses the webserver code (amended) from the Plutus Community https://docs.plutus-community.com/docs/setup/buildDocumentation.html
to instantiate a webserver for the Plutus and Haddock documentation.

## Version

* 2.3.12
