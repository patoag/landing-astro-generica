FROM node:18-alpine AS base

# Establecer el directorio de trabajo
WORKDIR /app

# Instalación de dependencias
COPY package*.json ./
RUN npm ci

# Copiar el resto del código fuente
COPY . .

# Build para producción
RUN npm run build

# Etapa para producción con menos dependencias
FROM node:18-alpine AS production

WORKDIR /app

# Copiar sólo los archivos necesarios para producción
COPY --from=base /app/dist /app/dist
COPY --from=base /app/package.json /app/

# Instalar sólo las dependencias de producción
RUN npm install --production

# Exponer el puerto
EXPOSE 4321

# Comando para iniciar la aplicación
CMD ["node", "./dist/server/entry.mjs"]
