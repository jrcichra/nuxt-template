#!/bin/bash
docker run -it -d\
    --name nuxt\
    -p 3000:3000\
    -v ${PWD}/components:/app/components\
    -v ${PWD}/pages:/app/pages\
    -v ${PWD}/assets:/app/assets\
    -v ${PWD}/layouts:/app/layouts\
    --restart=unless-stopped\
    jrcichra/nuxt-template
