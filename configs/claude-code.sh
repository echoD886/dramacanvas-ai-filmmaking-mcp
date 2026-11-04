#!/usr/bin/env sh
# Claude Code: connect DramaCanvas over streamable HTTP with your API key.
# Create the key at https://dramacanva.com/access-keys and export it first:
#   export DRAMACANVA_API_KEY="your-key"
claude mcp add --transport http dramacanva https://dramacanva.com/api/mcp --header "Authorization: Bearer $DRAMACANVA_API_KEY"
