# architectures: linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6
FROM ${VCW_REGISTRY}hkvb/bash.wrapper:5.0.18

COPY ./ /vcw/repo/

LABEL co.vcweb.schema-version="1.0" \
      co.vcweb.label="NixOS Repository" \
      co.vcweb.description="Repositry of NixOS based images." \
      co.vcweb.realm="hkvb" \
      co.vcweb.image="nixos" \
      co.vcweb.tag="2.3.12" \
      co.vcweb.maintainer="infometis@vcweb.co"
