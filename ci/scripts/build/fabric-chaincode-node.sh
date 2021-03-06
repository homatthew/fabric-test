#!/bin/bash
# Copyright the Hyperledger Fabric contributors. All rights reserved.
#
# SPDX-License-Identifier: Apache-2.0
set -euo pipefail

git clone -b ${BRANCH} https://github.com/hyperledger/fabric-chaincode-node "${GOPATH}/src/github.com/hyperledger/fabric-chaincode-node"
cd "${GOPATH}/src/github.com/hyperledger/fabric-chaincode-node"
node common/scripts/install-run-rush.js install
node common/scripts/install-run-rush.js rebuild

# This is temporary until chaincode-node starts adding 2 digit tags
docker tag hyperledger/fabric-nodeenv hyperledger/fabric-nodeenv:2.1
