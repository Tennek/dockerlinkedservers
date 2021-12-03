FROM mcr.microsoft.com/mssql/server

# Switch to root user
USER root

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# copy local files to folder in the image
COPY . /usr/src/app

# Grant permissions for the import-data script to be executable
RUN chmod +x /usr/src/app/creation.sh

# Switch back to mssql user and run the entrypoint script
USER mssql
ENTRYPOINT ["./entrypoint.sh"]