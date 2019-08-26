FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-env
WORKDIR /app

RUN git clone https://github.com/sculptor-dev/api.sculptor.core.git .
RUN dotnet restore
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
WORKDIR /app
COPY --from=build-env /app/Api.Sculptor.Core/out .
ENTRYPOINT ["dotnet", "Api.Sculptor.Core.dll"]
