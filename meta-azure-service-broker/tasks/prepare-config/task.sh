#!/bin/bash

set -euo pipefail

cp azure-tile-pipelines/meta-azure-service-broker/tasks/prepare-config/config-${PRODUCT_VERSION}.yml product-config/config.yml
cat >> product-config/vars.yml << EOF
---
environment: ${AZURE_ENVIRONMENT}
tenant_id: ${AZURE_TENANT_ID}
subscription_id: ${AZURE_SUBSCRIPTION_ID}
client_id: ${AZURE_CLIENT_ID}
client_secret: ${AZURE_CLIENT_SECRET}
azure_broker_database_server: ${AZURE_BROKER_DATABASE_SERVER}
azure_broker_database_name: ${AZURE_BROKER_DATABASE_NAME}
azure_broker_database_user: ${AZURE_BROKER_DATABASE_USER}
azure_broker_database_password: ${AZURE_BROKER_DATABASE_PASSWORD}
azure_broker_database_encryption_key: ${AZURE_BROKER_DATABASE_ENCRYPTION_KEY}
network: ${NETWORK}
singleton_availability_zone: ${SINGLETON_AVAILABILITY_ZONE}
other_availability_zone: ${OTHER_AVAILABILITY_ZONE}
EOF
