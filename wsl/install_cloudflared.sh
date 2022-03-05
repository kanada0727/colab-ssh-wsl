# !bin/bash
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb -O clouidflared.deb
sudo apt install ./clouidflared.deb
rm clouidflared.deb
