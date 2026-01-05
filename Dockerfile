FROM n8nio/n8n:latest

USER root

RUN mkdir -p /home/node/.n8n/nodes \
  && chown -R node:node /home/node/.n8n

USER node

RUN cd /home/node/.n8n/nodes \
  && npm init -y \
  && npm install --omit=dev \
     @n8n/n8n-nodes-langchain \
     @elevenlabs/n8n-nodes-elevenlabs
