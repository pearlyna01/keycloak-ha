# Setting up keycloak HA

This repository is to demostrate how caching works between 2 keycloak instances.

### Configuring Keycloak Cache (Infinnispan)
psql -U keycloak -d keycloak-db -c "select * from jgroups_ping;"