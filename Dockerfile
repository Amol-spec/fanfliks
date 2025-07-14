# Use the official .NET Core 3.1 runtime as a base image
FROM mcr.microsoft.com/dotnet/aspnet:8.0.1

# Set the working directory in the container
WORKDIR /app

# Copy the published app to the container
COPY ./bin/Release/net8.0/publish/ .

# Expose the port the app will run on
EXPOSE 7001

# Define the entry point for the container
ENTRYPOINT ["dotnet", "api.dll"]
