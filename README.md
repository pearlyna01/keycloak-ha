# Setting up keycloak HA

Setting up 2 keycloak containers.

### Configuring Keycloak Cache (Infinnispan)
psql -U keycloak -d keycloak-db -c "select * from jgroups_ping;"