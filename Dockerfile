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

# Verificar que se generó la carpeta dist
RUN ls -la dist/

# Etapa de producción con nginx para servir archivos estáticos
FROM nginx:alpine

# Crear archivo de configuración personalizado de Nginx
RUN echo $'server {\
    listen 80;\
    listen [::]:80;\
    \
    location / {\
        root /usr/share/nginx/html;\
        index index.html;\
        try_files $uri $uri/ /index.html;\
    }\
}' > /etc/nginx/conf.d/default.conf

# Copiar los archivos estáticos desde la etapa de construcción
COPY --from=build /app/dist/ /usr/share/nginx/html/

# Verificar que los archivos se copiaron correctamente
RUN ls -la /usr/share/nginx/html/

# Exponer puerto 80
EXPOSE 80

# Comando para iniciar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
