FROM n8nio/n8n:2.1.5

USER root

# Cartella community nodes
RUN mkdir -p /home/node/.n8n/nodes \
  && chown -R node:node /home/node/.n8n

USER node

# Inizializza progetto npm e installa SOLO i community nodes non inclusi in n8n
RUN cd /home/node/.n8n/nodes \
  && npm init -y \
  && npm install --omit=dev \
     n8n-nodes-qdrant \
     @elevenlabs/n8n-nodes-elevenlabs
