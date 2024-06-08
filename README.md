xtls xray for dhiraagu network

Installation Guide with Docker
install docker
curl -fsSL https://get.docker.com | sh


clone this project
git clone https://github.com/shahulyn/xtlsxraymv && cd xtlsxraymv


build docker image
docker build -t xrayreality .


run
docker run -d --name xrayreality -p443:443 xrayreality
