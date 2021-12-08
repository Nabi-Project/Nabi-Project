#!/bin/bash

cd ../src/Face-UI/WebApp-UI
npm run build
serve -s build &
lt -p 3000 -s nabi-dev-3f2s