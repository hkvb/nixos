
docker run -d --rm --name plutus-playground-manager -p 8009:8009 -p 8010:8010 -p 8011:8080 -v nixos_plutus:/nix -v nixos_root:/root -v nixos_tmp:/tmp -v %cd%:/plutus hkvb/nixos.plutus %*
docker exec -it plutus-playground-manager sh -i /vcw/pwd/check-prerequisites $@
