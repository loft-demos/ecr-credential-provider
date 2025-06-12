# Dockerfile to package ecr-credential-provider + its config
FROM alpine:3.20

# Create working directory
WORKDIR /bundle

# Copy the credential provider binary and config
COPY ecr-credential-provider /bundle/ecr-credential-provider
COPY credential-provider-config.yaml /bundle/credential-provider-config.yaml

# Use a non-root user if needed (optional)
# USER nobody

# Dummy command
CMD ["ls", "/bundle"]