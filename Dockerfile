FROM node:8.9-alpine
ENV NODE_ENV production
ENV GIT_REPO=https://github.com/TrumanDu/CmsWing.git

RUN apk add --no-cache --virtual .build-deps-yarn git \
    && cd / \
    && git clone $GIT_REPO \
    && cd CmsWing \
    && npm install --production --silent 
WORKDIR /CmsWing
VOLUME /CmsWing/www
CMD npm start
