#!/usr/bin/env bash

VERSION=$(grep \"version\" ./package.json | awk '{sub(/\",/, ""); print substr($2, 2)}');

kubectl set image deployment/fastfeet fastfeet=dayvsonsales/fastfeet:$VERSION
