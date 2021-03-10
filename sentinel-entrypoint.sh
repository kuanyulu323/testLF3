#!/bin/sh

sed -i "s/\$SENTINEL_QUORUM/$SENTINEL_QUORUM/g" /etc/redis/sentinel.conf
sed -i "s/\$SENTINEL_DOWN_AFTER/$SENTINEL_DOWN_AFTER/g" /etc/redis/sentinel.conf
sed -i "s/\$SENTINEL_FAILOVER/$SENTINEL_FAILOVER/g" /etc/redis/sentinel.conf
sed -i "s/\$REDIS_MASTER_DOMAIN/$REDIS_MASTER_DOMAIN/g" /etc/redis/sentinel.conf
sed -i "s/\$REDIS_MASTER_PORT/$REDIS_MASTER_PORT/g" /etc/redis/sentinel.conf
sed -i "s/\$REDIS_SENTINELS_GROUP_NAME/$REDIS_SENTINELS_GROUP_NAME/g" /etc/redis/sentinel.conf

exec docker-entrypoint.sh redis-server /etc/redis/sentinel.conf --sentinel