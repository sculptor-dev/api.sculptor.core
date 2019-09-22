FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-env
COPY Api.Sculptor.Core /app
WORKDIR /app

RUN ["dotnet", "restore"]
RUN ["dotnet", "publish", "-c", "Release", "-o", "out"]

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
WORKDIR /app
EXPOSE 5000/tcp
COPY --from=build-env /app/out .
ENV ASPNETCORE_URLS http://*:5000
ENTRYPOINT ["dotnet", "Api.Sculptor.Core.dll"]
