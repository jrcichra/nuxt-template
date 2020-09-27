FROM node:slim
WORKDIR /app
COPY nuxt.config.js yarn.lock package.json LICENSE ./
RUN yarn install
COPY pages ./pages
COPY layouts ./layouts
COPY assets ./assets
COPY components ./components
RUN yarn dev
