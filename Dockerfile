FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app
COPY *.csproj ./

RUN dotnet restore
COPY . ./

RUN dotnet publish -c Release -o out

ENTRYPOINT ["dotnet", "out/dgs.dll"]