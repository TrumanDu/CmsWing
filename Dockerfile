FROM node:8.9-alpine
ENV NODE_ENV production
ENV GIT_REPO=https://github.com/TrumanDu/CmsWing.git
WORKDIR /opt/app
RUN apk add git \
    && git clone ${GIT_REPO} \
    && cd CmsWing \
    && npm install --production --silent 
CMD npm start
