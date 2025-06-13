# Landing Page Genérica con Astro

Este proyecto es un punto de partida sólido para crear landing pages atractivas y de alto rendimiento utilizando [Astro](https://astro.build/). Diseñado para ser extensible y personalizable, este template incluye todas las secciones esenciales que una landing page moderna necesita.

## 🚀 Características

- **Alto Rendimiento**: Construido con Astro para una carga rápida y optimizada
- **Diseño Responsive**: Se adapta perfectamente a todos los tamaños de pantalla
- **Componentes Reutilizables**: Estructura modular para fácil personalización
- **Integración con Tailwind CSS**: Estilizado con Tailwind para un desarrollo rápido
- **Soporte para Docker**: Configuración lista para desarrollo y despliegue con Docker
- **SEO Optimizado**: Estructura preparada para mejorar el posicionamiento web

## 📁 Estructura del Proyecto

```text
/
├── public/               # Activos estáticos
├── src/
│   ├── components/       # Componentes reutilizables
│   │   ├── CTA.astro     # Llamada a la acción
│   │   ├── FAQ.astro     # Preguntas frecuentes
│   │   ├── Features.astro # Características del producto/servicio
│   │   ├── Footer.astro  # Pie de página
│   │   ├── Header.astro  # Encabezado con navegación
│   │   ├── Hero.astro    # Sección principal
│   │   ├── Pricing.astro # Planes y precios
│   │   └── Testimonials.astro # Testimonios de clientes
│   ├── layouts/          # Plantillas de página
│   └── pages/            # Páginas del sitio
├── Dockerfile            # Configuración para Docker
├── docker-compose.yml    # Orquestación de servicios con Docker
└── package.json          # Dependencias y scripts
```

## 🛠️ Instrucciones de Uso

### Desarrollo Local

1. Clona este repositorio
2. Instala las dependencias: `npm install`
3. Inicia el servidor de desarrollo: `npm run dev`
4. Visita `http://localhost:4321` en tu navegador

### Con Docker

```bash
# Construir e iniciar el contenedor
docker-compose up -d

# Ver logs
docker-compose logs -f

# Detener el contenedor
docker-compose down
```

## 🧩 Personalización

1. Modifica los componentes en `src/components/` según tus necesidades
2. Actualiza los textos, imágenes y colores para reflejar tu marca
3. Añade o elimina secciones editando `src/pages/index.astro`
4. Personaliza los estilos en `tailwind.config.mjs`

## 📦 Despliegue

Este proyecto está listo para ser desplegado en cualquier plataforma que soporte Astro o Docker:

- Vercel
- Netlify
- GitHub Pages
- Tu propio servidor con Docker

## 🔧 Comandos Útiles

| Comando               | Acción                                           |
| :-------------------- | :----------------------------------------------- |
| `npm install`         | Instala dependencias                             |
| `npm run dev`         | Inicia servidor local en `localhost:4321`        |
| `npm run build`       | Construye el sitio para producción en `./dist/`  |
| `npm run preview`     | Previsualiza la build antes de desplegar         |

## 📝 Licencia

Este proyecto está disponible como código abierto bajo la licencia MIT.

---

Hecho con ❤️ usando [Astro](https://astro.build/)
