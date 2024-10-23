#!/bin/bash
echo "Pruning Docker system to remove unused containers, networks, images, and volumes..."
sudo docker system prune -a --volumes -f
