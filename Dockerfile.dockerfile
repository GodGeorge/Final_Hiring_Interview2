#Building Phase
FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build

WORKDIR /buildapps

COPY . .
RUN dotnet restore 
RUN dotnet publish -c release -o publish

#Run Phase
FROM mcr.microsoft.com/dotnet/aspnet:3.1

WORKDIR /runapps
EXPOSE 5000

COPY --from=build /buildapps/publish .
ENTRYPOINT ["dotnet", "HiringExercise.dll" ]