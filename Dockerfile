# Use the official .NET runtime as a parent image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app

# Copy published output from build context
COPY . .

# Expose port
EXPOSE 80

# Run the app
ENTRYPOINT ["dotnet", "FanfliksSampleApi.dll"]
