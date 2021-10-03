FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine as build
WORKDIR /app
COPY ConversaoPeso.Web/ .
RUN dotnet restore
RUN dotnet publish -c release -o dist --no-restore

FROM mcr.microsoft.com/dotnet/aspnet:5.0-alpine
WORKDIR /app
COPY --from=build /app/dist/ /app/

ENTRYPOINT [ "dotnet", "ConversaoPeso.Web.dll" ]