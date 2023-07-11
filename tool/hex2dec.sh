h=$(echo "${1:2}" | tr '[a-z]' '[A-Z]')

echo -e "ibase=16; ${h}" | bc |  tr -d '\n' |  tr -d '\\'