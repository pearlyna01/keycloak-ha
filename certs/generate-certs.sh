# create file first (or else docker compose creates a directory instead)
touch keycloak-1.key && touch keycloak-1.pem && touch keycloak-2.key && touch keycloak-2.pem && touch localhost.key && touch localhost.pem

openssl req -newkey rsa:4096 -nodes -subj "/CN=keycloak-1" -keyout keycloak-1.key -x509 -days 365 -out keycloak-1.pem &&\
openssl req -newkey rsa:4096 -nodes -subj "/CN=keycloak-2" -keyout keycloak-2.key -x509 -days 365 -out keycloak-2.pem &&\
openssl req -newkey rsa:4096 -nodes -subj "/CN=localhost" -keyout localhost.key -x509 -days 365 -out localhost.pem

mv *.key /certs
mv *.pem /certs