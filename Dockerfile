FROM keymetrics/pm2:latest-alpine

# Bundle App files
COPY src src/
COPY package.json .
COPY pm2.yaml pm2.yaml

# Install app dependencies
ENV NODE_ENV production
RUN npm install

# Show current folder structure in logs
# RUN ls -al -R

# 更多详情请阅读：
# https://hub.docker.com/r/keymetrics/pm2/
# http://pm2.keymetrics.io/docs/usage/docker-pm2-nodejs/#usage
CMD ["pm2-runtime", "start", "pm2.yaml", "no-auto-exit"]
