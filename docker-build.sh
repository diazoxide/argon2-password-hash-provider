#!/bin/bash

set -ex

docker run --platform=linux/amd64 -it --rm --name argon2-password-hash-provider -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.8.6-openjdk-18 mvn clean package
echo "cp target/argon2-password-hash-provider-2.0.1.jar [your]/keycloak/deployments/"
#cp target/argon2-password-hash-provider-2.0.1.jar ../../../../dxp-services/keycloak/deployments/
