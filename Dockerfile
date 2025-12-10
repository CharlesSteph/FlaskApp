# Choix de l'image de base (un Python léger)
FROM python:3.9-slim

# Création du dossier de travail dans le conteneur
WORKDIR /app

# 1. La copie du code dans le conteneur
# (On copie tout le dossier courant '.' vers le dossier de travail '/app')
COPY . /app

# 2. L'installation des dépendances Flask
# (Docker lit le requirements.txt copié juste avant et installe tout)
RUN pip install --no-cache-dir -r requirements.txt

# 3. La spécification du port sur lequel l'application Flask écoute
# (C'est une documentation pour dire que le conteneur utilise le port 5000)
EXPOSE 5000

# 4. L'exécution de l'application Flask
# (La commande qui se lance au démarrage du conteneur)
CMD ["python", "app.py"]