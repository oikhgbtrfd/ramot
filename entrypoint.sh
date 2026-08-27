#!/bin/sh
sed -i "s|__SECRET__|${SECRET}|g" /config.toml
sed -i "s|__AD_TAG__|${AD_TAG}|g" /config.toml
exec mtg run /config.toml
