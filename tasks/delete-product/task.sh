#!/bin/bash

set -uo pipefail

wget https://github.com/pivotal-cf/om/releases/download/0.42.0/om-linux
chmod +x om-linux
mv om-linux /usr/local/bin/om-linux

om-linux \
  --target https://$OPSMAN_DOMAIN_OR_IP_ADDRESS \
  --username "$OPS_MGR_USR" \
  --password "$OPS_MGR_PWD" \
  --skip-ssl-validation \
  delete-product \
  --product-name $PRODUCT_NAME \
  --product-version $PRODUCT_VERSION

exit 0
