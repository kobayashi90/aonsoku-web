FROM ghcr.io/victoralvesf/aonsoku:latest

# Railway expects the app to bind to 0.0.0.0:$PORT
# Most web apps can be configured via environment variables

# Set default port (Railway will override with $PORT)
ENV PORT=${PORT:-8080}

# Expose the port
EXPOSE $PORT

# The aonsoku image should handle the PORT environment variable
# If it doesn't, we may need to use a custom entrypoint
