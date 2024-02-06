FROM node:20.11.0-alpine

WORKDIR /arithmetic-service
# COPY index.html /arithmetic-service/public
# COPY index.js /arithmetic-service/src/index
COPY package*.json/ /arithmetic-service
RUN npm ci --omit=dev
COPY ./ /arithmetic-service/src

CMD ["npm","start"]

EXPOSE 80

# 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