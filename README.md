# hkvb/nixos

Repository of nixos/nix based images.

## Plutus

nixos/nix image tweaked for Plutus development.

add host: line to webpack.config.js in plutus-playground-client, to enable traffic from outside container.
```bash
https: true,
host: "0.0.0.0",
```

Must configure tmux in a 3 window session.

Instantiation:

```bash
sudo docker run -it -p 8009:8009 -p 8080:8080 -v hkvb_nixos_plutus:/nix -v $(pwd)/plutus:/plutus hkvb/nixos.plutus
```

Don't forget to check plutus repo out at commit of week

Need to set up 3 pane tmux inside container: playground server and client, and compile

in 3 different panes in root of plutus repo, open nix-shell, then
1. in plutus/plutus-playground-client: run "plutus-playground-server"
2. in plutus/plutus-playground-client: run "npm run start"
This start the playground at https://localhost:8009
3. in haskell folder (weekXX): cabal update; cabal repl


## Version

* 2.3.12
