# 1. Usar una imagen base de Python oficial
FROM python:3.11-slim

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar el archivo de dependencias
COPY requirements.txt .

# 4. Instalar las librerías necesarias
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar todo el contenido de tu proyecto al contenedor
COPY . .

# 6. Crear la carpeta de salidas por si no existe
RUN mkdir -p outputs

# 7. Comando para ejecutar el script automáticamente al iniciar el contenedor
CMD ["python", "main.py"]