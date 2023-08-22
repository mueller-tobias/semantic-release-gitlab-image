FROM node:20.5.1-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
      git-core \
      ca-certificates \
      && \
      apt-get clean && \
      rm -rf /var/lib/apt/lists/* && \
      npm install -g semantic-release @semantic-release/gitlab semantic-release/exec semantic-release/changelog semantic-release/git


USER 1000:1000

CMD [ "semantic-release" ]
