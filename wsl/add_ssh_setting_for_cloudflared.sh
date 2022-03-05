# !/bin/bash
ssh_conf="
Host *.trycloudflare.com
	HostName %h
	User root
	Port 22
	ProxyCommand $(which cloudflared) access ssh --hostname %h
"
echo "${ssh_conf}" >> ~/.ssh/config
