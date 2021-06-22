mkdir ccims-vsc
docker run -it -v %cd%:/home/ccims -w /home/ccims/ccims-vsc --entrypoint="" node:latest /bin/bash -c "git clone https://github.com/ccims-vsc/ccims-vsc-setup.git && chmod +x ./ccims-vsc-setup/setup.sh && ./ccims-vsc-setup/setup.sh"
docker-compose -f ccims-vsc/ccims-backend-gql/docker-compose.yaml down -v
docker-compose -f ccims-vsc/ccims-backend-gql/docker-compose.yaml up -d --build
call code --install-extension ccims-vsc/extension.vsix
call code ccims-vsc/example-project