#!/usr/bin/env bash
docker run -d --network mongo_node -p 3000:3000 --name alurabooks aluradocker/alura-books:1.0