#!/bin/bash

set -euo pipefail

cp azure-tile-pipelines/open-service-broker-azure/tasks/prepare-config/config.yml product-config/
cat >> product-config/vars.yml << EOF
---
azure_environment: ${AZURE_ENVIRONMENT}
azure_tenant_id: ${AZURE_TENANT_ID}
azure_subscription_id: ${AZURE_SUBSCRIPTION_ID}
azure_client_id: ${AZURE_CLIENT_ID}
azure_client_secret: ${AZURE_CLIENT_SECRET}
async_redis_db: ${ASYNC_REDIS_DB}
async_redis_enable_tls: ${ASYNC_REDIS_ENABLE_TLS}
async_redis_host: ${ASYNC_REDIS_HOST}
async_redis_password: ${ASYNC_REDIS_PASSWORD}
async_redis_port: ${ASYNC_REDIS_PORT}
storage_redis_db: ${STORAGE_REDIS_DB}
storage_redis_enable_tls: ${STORAGE_REDIS_ENABLE_TLS}
storage_redis_host: ${STORAGE_REDIS_HOST}
storage_redis_password: ${STORAGE_REDIS_PASSWORD}
storage_redis_port: ${STORAGE_REDIS_PORT}
log_level: ${LOG_LEVEL}
min_stability: ${MIN_STABILITY}
crypto_aes256_key: ${CRYPTO_AES256_KEY}
network: ${NETWORK}
singleton_availability_zone: ${SINGLETON_AVAILABILITY_ZONE}
other_availability_zone: ${OTHER_AVAILABILITY_ZONE}
EOF
