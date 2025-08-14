FROM node:alpine

ENV GH_TOKEN=your_token

RUN npm install -g copilot-api@latest \
    && npm cache clean --force \
    && rm -rf /root/.npm /tmp/*

CMD ["sh", "-c", "copilot-api start -g $GH_TOKEN"]
