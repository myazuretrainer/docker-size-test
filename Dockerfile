FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
COPY . ./docker-size-test
WORKDIR /docker-size-test/
RUN dotnet build -c Release
ENTRYPOINT ["dotnet", "run", "-c", "Release", "--no-build"]