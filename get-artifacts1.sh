#!/bin/bash
tok=$(cat ~/token.gh)
owner="Yanael44"
repo="tp-graphes"
artifact_id="38539352906"
curl -s -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $tok" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/repos/${owner}/${repo}/actions/artifacts" > gh-artifacts.json

echo "Résultat enregistré dans gh-artifacts.json"
