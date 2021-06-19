mkdir ccims-vsc
docker run -it -v %cd%:/home/ccims -w /home/ccims/ccims-vsc node:latest "git clone https://github.com/ccims-vsc/ccims-vsc-setup.git && chmod +x ./ccims-vsc-setup/setup.sh && ./ccims-vsc-setup/setup.sh"
docker-compose -f ccims-backend-gql/docker-compose.yaml up -d
code --install-extension extension.vsix
code test-project