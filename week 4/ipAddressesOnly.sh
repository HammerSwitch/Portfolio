#!/bin/bash

./IPinfo.sh | sed -n '/IP / {
p
}'