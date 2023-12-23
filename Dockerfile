FROM quay.io/yajtpg/pterodactyl-images:python-3.11

# Fix permission issue
USER root
RUN mkdir -p /var/lib/apt/lists/partial && chmod -R 777 /var/lib/apt/lists/partial

# Update packages and install ffmpeg
RUN apt-get -y update && apt-get install -y ffmpeg

# Set back to the original user
USER container
