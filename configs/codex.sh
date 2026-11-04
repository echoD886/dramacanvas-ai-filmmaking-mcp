#!/usr/bin/env sh
# OpenAI Codex CLI: the key is read from the DRAMACANVA_API_KEY environment variable.
# Create the key at https://dramacanva.com/access-keys
codex mcp add dramacanva --url https://dramacanva.com/api/mcp --bearer-token-env-var DRAMACANVA_API_KEY
