#!/bin/bash
G='\e[32m' #Green Colour
NC='\e[0m'   # No colour

echo -e "${G}[+] Special Thanks and credits to Nahamsec${NC}" 
#Important updates
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get install python3-pip -y
sudo apt-get install git -y
sudo apt-get autoremove -y

#Setup of GO lang
echo -e "${G}[+] Installing go, if already go is installed then updating it${NC}"
					LATEST_GO_VERSION="$(curl --silent https://go.dev/VERSION?m=text)";
					echo -e "${G}[+] Installing Golang${NC}"
					wget https://golang.org/dl/${LATEST_GO_VERSION}.linux-amd64.tar.gz
					sudo chmod 777 ${LATEST_GO_VERSION}.linux-amd64.tar.gz
					sudo tar -xvf ${LATEST_GO_VERSION}.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					# Writing in .bashrc
					echo -e 'export GOROOT=/usr/local/go' >> ~/.bashrc
					echo -e 'export GOPATH=$HOME/go'	>> ~/.bashrc			
					echo -e 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bashrc	
					source ~/.bashrc
					# Writing in .zshrc
					echo -e 'export GOROOT=/usr/local/go' >> ~/.zshrc
					echo -e 'export GOPATH=$HOME/go' >> ~/.zshrc
					echo -e 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.zshrc
					source ~/.zshrc
#Directory to store Weapons 
echo -e "${G}[+] Making a directory to Store your weapons${NC}"
mkdir ~/Weapons
cd ~/Weapons/

#Installing Sublister 
echo -e "${G}[+] Installing Sublist3r${NC}"
sudo git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt
cd ~/Weapons/
echo -e "${G}[+] A bullet called Sublist3r is loaded${NC}"

#Lazyrecon
echo -e "${G}[+] Installing lazyrecon${NC}"
sudo git clone https://github.com/nahamsec/lazyrecon.git
cd ~/Weapons/
echo -e "${G}[+] A bullet called Lazyrecon is loaded${NC}"

#Waybackurls
echo -e "${G}[+] Installing waybackurls${NC}"
go install github.com/tomnomnom/waybackurls@latest
echo -e "${G}[+] A bullet called waybackurls is loaded${NC}"

#sqlmap
echo -e "${G}[+] Installing sqlmap${NC}"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/Weapons/
echo -e "${G}[+] A bullet called sqlmap is loaded${NC}"

#ffuf
echo -e "${G}[+] Installing ffuf${NC}"
go install github.com/ffuf/ffuf@latest
echo -e "${G}[+] A bullet called ffuf is loaded${NC}"

#nuclei
echo -e "${G}[+] Installing nuclei${NC}"
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
echo -e "${G}[+] A bullet called nuclei is loaded${NC}"

#amass
echo -e "${G}[+] Installing amass${NC}"
go install -v github.com/OWASP/Amass/v3/...@master
echo -e "${G}[+] A bullet called amass is loaded${NC}"

#dirsearch
echo -e "${G}[+] Installing dirsearch${NC}"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/Weapons/
echo -e "${G}[+] A bullet called dirsearch is loaded${NC}"

#wpscan
echo -e "${G}[+] Installing wpscan${NC}"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ~/Weapons/
echo -e "${G}[+] A bullet called wpscan is loaded${NC}"

#nmap
echo -e "${G}[+] Installing nmap${NC}"
sudo apt-get install -y nmap
cd ~/Weapons/
echo -e "${G}[+] A bullet called nmap is loaded${NC}"

#httprobe
echo -e "${G}[+] Installing httprobe${NC}"
go install github.com/tomnomnom/httprobe @latest
echo -e "${G}[+] A bullet called httprobe is loaded${NC}"

#httpx
echo -e "${G}[+] Installing httpx${NC}"
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
echo -e "${G}[+] A bullet called httpx is loaded${NC}"

#gobuster
echo -e "${G}[+] Installing gobuster${NC}"
go install github.com/OJ/gobuster/v3@latest
echo -e "${G}[+] A bullet called gobuster is loaded${NC}"

#gau
echo -e "${G}[+] Installing gau${NC}"
go install github.com/lc/gau/v2/cmd/gau@latest
echo -e "${G}[+] A bullet called gau is loaded${NC}"

#assetfinder
echo -e "${G}[+] Installing assetfinder${NC}"
go install github.com/tomnomnom/assetfinder@latest
echo -e "${G}[+] A bullet called assetfinder is loaded${NC}"

echo -e "${G}[+] Installing dnscan${NC}"
sudo git clone https://github.com/rbsec/dnscan.git
cd dnscan*
pip install -r requirements.txt
cd ~/Weapons/
echo -e "${G}[+] A bullet called dnscan is loaded${NC}"

#SecList
echo -e "${G}[+] Downloading the root of all hunting SecList${NC}"
git clone https://github.com/danielmiessler/SecLists.git
cd ~/Weapons/
echo -e "${G}[+] The final bullet SecList is loaded${NC}"


echo -e "${G}[+] Thanks for using this script :) Keep Learning and Keep Hacking ;)${NC}"
