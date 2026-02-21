# 1. Imagen base con Python
FROM python:3.9-slim

# 2. Instalar Git dentro del contenedor para poder clonar
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# 3. Directorio donde vivirá la app
WORKDIR /app

# 4. Clonar el repositorio vía HTTPS
# Reemplaza la URL por la de tu repositorio si es diferente
RUN git clone https://github.com/urielck/video-club.git .

# 5. Comando para ejecutar la app
CMD ["python", "app.py"]
