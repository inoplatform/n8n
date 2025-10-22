# ✅ Use the official prebuilt image (no build, low RAM use)
FROM n8nio/n8n:1.116.2

# Set timezone (optional)
ENV GENERIC_TIMEZONE=Europe/Istanbul

# Expose port
EXPOSE 5678

# Default command
CMD ["n8n", "start"]
