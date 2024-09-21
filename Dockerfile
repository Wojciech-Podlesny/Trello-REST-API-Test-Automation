# Użyj oficjalnego obrazu Node.js Alpine jako bazowego
FROM node:18-alpine

# Utwórz katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj package.json i package-lock.json
COPY package*.json ./

# Zainstaluj zależności
RUN npm install

# Skopiuj resztę aplikacji
COPY . . 

# Ustaw zmienną środowiskową dla klucza API i tokena
ARG TRELLO_API_KEY
ARG TRELLO_TOKEN
ENV TRELLO_API_KEY=${TRELLO_API_KEY}
ENV TRELLO_TOKEN=${TRELLO_TOKEN}

EXPOSE 3000

# Komenda domyślna
CMD [ "npm", "run", "test" ]