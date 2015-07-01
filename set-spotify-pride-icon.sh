#!/bin/sh

# script for https://medium.com/humans-create-software/how-to-get-the-spotify-pride-icon-in-your-mac-os-x-dock-944757d0d17b

curl -o icon.icns https://dl.dropboxusercontent.com/content_link/heqIreR1Wns4PEo1N0DZEbxrBUBYi12tFOMJUJKGyPdHgGPbtoOFbmaGIQsWgfC3

sudo cp ./icon.icns /Applications/Spotify.app/Contents/Resources/icon.icns

killall "Spotify"
