#!/bin/bash

set -euo pipefail

wget https://github.com/pivotal-cf/om/releases/download/0.42.0/om-linux
chmod +x om-linux
mv om-linux /usr/local/bin/om-linux

om-linux \
  --target https://$OPSMAN_DOMAIN_OR_IP_ADDRESS \
  --username "$OPS_MGR_USR" \
  --password "$OPS_MGR_PWD" \
  --skip-ssl-validation \
  configure-product \
  --config product-config/config.yml \
  --vars-file product-config/vars.yml
