#!/bin/sh

ALL='
axon
json
marshal
msgpack
pickle
toml
yaml
'

for FROM in ${ALL}
do
  for TO in ${ALL} python
  do
    APP="../sh/${FROM}2${TO}"
    test -x "${APP}" && continue
    printf ' %s\r' "${FROM}2${TO}"
    finit \
      FROM="${FROM}" \
      TO="${TO}" \
      < ../templates/template.sh > "${APP}" \
      && chmod 0755 "${APP}"
    printf '\n'
  done
done

# eof
