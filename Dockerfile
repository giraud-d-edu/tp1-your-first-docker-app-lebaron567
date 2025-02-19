FROM node:14

WORKDIR /app

# Copie des fichiers
COPY package*.json ./
RUN npm install
COPY . .

# Exposition du port
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["node", "server.js"]