# architectures: linux/amd64

FROM ${VCW_REGISTRY}nixos/nix:${VCW_TAG}

RUN   apk update && apk add ca-certificates wget && update-ca-certificates
 
COPY _image/ /vcw/pwd/
RUN chmod -R 755 vcw/pwd/*

ENTRYPOINT ["/vcw/pwd/start-container"]

LABEL co.vcweb.schema-version="1.0" \
      co.vcweb.label="${VCW_REALM}/nixos.plutus" \
      co.vcweb.description="NixOS Nix image for Plutus development." \
      co.vcweb.realm="${VCW_REALM}" \
      co.vcweb.image="nixos.plutus" \
      co.vcweb.tag="${VCW_TAG}" \
      co.vcweb.maintainer="infometis@vcweb.co"
