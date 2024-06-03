# DevOps 2

## Build docker
docker build -t my-nginx .

## Run the application
docker run -d \
  -p 80:80 \
  -p 443:443 \
  -v ./ssl:/etc/nginx/ssl \
  -v ./html:/usr/share/nginx/html \
  --name my-nginx-container my-nginx

## Generate Cert
openssl req -x509 -newkey rsa -nodes -keyout key.pem -out cert.pem -days 365

## Using MKCert
- Install mkcert: brew install mkcert (on macOS) or download from https://github.com/FiloSottile/mkcert
- Generate Root CA: mkcert -install
- Create Certificate: mkcert devopsclass.test (replace with your local domain)
