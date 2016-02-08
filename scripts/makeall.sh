#!/bin/sh

for FROM in marshal pickle json yaml msgpack toml
do
  for TO in marshal pickle json yaml msgpack toml python
  do
    APP="../sh/${FROM}2${TO}"
    finit \
      FROM="${FROM}" \
      TO="${TO}" \
      < ../templates/template.sh > "${APP}" \
      && chmod 0755 "${APP}"
  done
done

# eof
