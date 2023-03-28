#!/usr/local/bin/bash

if [ $# -lt 1 ]; then
    echo "Usage: $0 [country1] [country2] ..."
    exit 1
fi

for country in "$@"; do
    response=$(curl -s "https://restcountries.com/v2/name/$country")
    name=$(echo "$response" | jq -r '.[0].name')
    capital=$(echo "$response" | jq -r '.[0].capital')
    population=$(echo "$response" | jq -r '.[0].population')
    languages=$(echo "$response" | jq -r '.[0].languages[].name' | paste -sd "," -)
    echo "Name: $name"
    echo "Capital: $capital"
    echo "Population: $population"
    echo "Languages: $languages"
    echo ""
done
