#!/bin/bash

cd ../Nabi-UI
npm run build
serve -s build &
lt -p 3000 -s nabi-dev-3f2s