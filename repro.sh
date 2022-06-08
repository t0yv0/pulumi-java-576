#!/usr/bin/env bash

set -euo pipefail

(cd ~/pulumi-java && make bin/pulumi-language-java)
export PATH=~/pulumi-java/bin:$PATH
(cd services/app-cluster && pulumi preview)
