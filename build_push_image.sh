#!/bin/bash

# 1. Build image item-app:v1
docker build -t item-app:v1 .

# 2. Tampilkan daftar image di lokal
docker images

# 3. Tag image sesuai format Docker Hub (<USERNAME_DOCKERHUB>/<NAMA_IMAGE>:<TAG>)
docker tag item-app:v1 rofik/item-app:v1

# 4. Login ke Docker Hub
docker login

# 5. Push image ke Docker Hub
docker push rofik/item-app:v1
