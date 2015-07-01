<img src="png/spotify_pride.png" style="max-width: 100px; float: right;">

# spotify_pride

On June 26, 2015 the Supreme Court ruled in favour of same-sex marriage. Following this decision Spotify changed their logo to a rainbow version.  
Set your Spotify icon to this version by following these simple steps:

## Windows

Sadly there is no way to just switch Icons of an executable in windows.  
So here is a batch script that will create a shortcut to spotify on your desktop with the new icon.
```
@echo off
bitsadmin.exe /transfer "DownloadSpotifyPrideIcon" https://raw.githubusercontent.com/lucianw/spotify_pride/master/ico/spotify_pride64.ico %APPDATA%\Spotify\spotify_pride64.ico
(
  echo Set oWS = WScript.CreateObject^("WScript.Shell"^) 
  echo sLinkFile = oWS.ExpandEnvironmentStrings^("%HOMEDRIVE%%HOMEPATH%\Desktop\Spotify.lnk"^)
  echo Set oLink = oWS.CreateShortcut^(sLinkFile^) 
  echo oLink.TargetPath = oWS.ExpandEnvironmentStrings^("%APPDATA%\Spotify\Spotify.exe"^)
  echo oLink.IconLocation = oWS.ExpandEnvironmentStrings^("%APPDATA%\Spotify\spotify_pride64.ico"^)
  echo oLink.Save
)1>cs.vbs
cscript //nologo .\cs.vbs
DEL cs.vbs /f /q
```
As there is no direct way to create a shortcut from console eather, this will create a vbs file, execute it and the delete it again. 
Just paste this to comandline or download the batch file.


## Mac & Linux

Just type this into your console and the icon should be switched.  
Thanks to <a href="https://twitter.com/pascalweiland">@pascalweiland</a> for the script :thumbsup:

```
curl -o icon.icns https://raw.githubusercontent.com/lucianw/spotify_pride/master/icns/spotify_pride.icns && sudo cp ./icon.icns /Applications/Spotify.app/Contents/Resources/icon.icns
```
https://raw.githubusercontent.com/lucianw/spotify_pride/master/png/spotify_pride.png