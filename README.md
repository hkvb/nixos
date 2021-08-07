# hkvb/nixos

Repository of nixos/nix based images.

## hkvb/nixos/plutus

nixos/nix image prepared for Plutus development.
It start the Plutus server, the Plutus Playground. It builds the documentation and makes it available in a static website.

It synchronises Plutus with the commit set in the cabal.project file if a repository pointer is supplied to the start script,
otherwise it runs Plutus at the current commit of the Plutus repository.

It uses the webserver code (amended) from the Plutus Community https://docs.plutus-community.com/docs/setup/buildDocumentation.html
to instantiate a webserver for the Plutus and Haddock documentation.

Instantiation: Extract the management scripts in the working folder of your Plutus repositories:
(Prefix with sudo if execution of Docker requires it.)

```bash
# Linux
docker run -v $(pwd):/plutus hkvb/nixos.plutus --extract

#Windows
docker run -v %cd%:/plutus hkvb/nixos.plutus --extract
```

The help information is available upon execution of the help script:

```bash
# Linux
./help

#Windows
help.bat
```

## Version

* 2.3.12
