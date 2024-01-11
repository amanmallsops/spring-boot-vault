# Use the official Vault image
FROM vault:1.4.0

ENV VAULT_DEV_ROOT_TOKEN_ID=${VAULT_DEV_ROOT_TOKEN_ID}

# Expose the port
EXPOSE ${PORT_8200}

RUN setcap 'cap_ipc_lock=+ep' $(readlink -f $(which vault))
