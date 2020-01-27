#!/usr/bin/env bash

echo 'Creating application user and db'

mongo INTEGRA \
        --host localhost \
        --port 27017 \
        -u root \
        -p akVLmBfN7GHhacDC \
        --authenticationDatabase admin \
        --eval "db.createUser({user: 'gipe', pwd: '280800Artfbgyn', roles:[{role:'dbOwner', db: 'INTEGRA'}]});"
