#!/usr/bin/env bash

docker stop plutus-playground-manager
docker container prune --force

echo "Removing nixos_plutus volume ..."
echo "This may take some time as this volume can be very large."
docker volume rm nixos_plutus
echo "Removing nixos_root volume ..."
docker volume rm nixos_root
echo "Removing nixos_tmp volume ..."
docker volume rm nixos_tmp
