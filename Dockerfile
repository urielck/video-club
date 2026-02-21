# Usamos una imagen ligera de Python
FROM python:3.9-slim
# Directorio de trabajo dentro del contenedor
WORKDIR /app
# Copiamos el script al contenedor
COPY app.py .
# 4. Comando para ejecutar la app al iniciar
CMD ["python", "app.py"]
