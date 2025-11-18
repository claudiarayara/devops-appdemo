#!/bin/bash

echo "Iniciando processo de deploy..."

# Build da imagem Docker
docker build -t appdemo:latest .

# Execução do container
docker run -d -p 3000:3000 --name appdemo appdemo:latest

echo "Deploy concluído com sucesso."
