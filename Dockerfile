# Etapa de construcción
FROM node:18-alpine AS build

# Establecer el directorio de trabajo
WORKDIR /app

# Instalación de dependencias
COPY package*.json ./
RUN npm ci

# Copiar el resto del código fuente
COPY . .

# Build para producción (sitio estático)
RUN npm run build

# Etapa de producción con nginx para servir archivos estáticos
FROM nginx:alpine

# Copiar configuración personalizada de nginx si es necesaria
COPY --from=build /app/dist /usr/share/nginx/html

# Exponer puerto 80
EXPOSE 80

# Nginx arranca automáticamente, no es necesario especificar un CMD
