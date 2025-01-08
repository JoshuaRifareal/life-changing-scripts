# Download blenderkit latest release from github

Invoke-WebRequest -Uri ((Invoke-RestMethod -Uri "https://api.github.com/repos/BlenderKit/blenderkit/releases/latest").assets[0].browser_download_url) -OutFile ((Invoke-RestMethod -Uri "https://api.github.com/repos/BlenderKit/blenderkit/releases/latest").assets[0].name)
