# Multipaper Kubernetes

Proof-of-concept Kubernetes setup for running a MultiPaper Minecraft Server that autoscales based on CPU usage. Not production-ready, but it works! **Pull Requests are more than welcome!**

## Setup

Clone the repository and run `kubectl apply -f .` in the root directory. This will create a deployment, service, and horizontal pod autoscaler and LoadBalancer for the Minecraft server. The server will be available on port 25565 of the LoadBalancer's IP address.

## To-do list

- [ ] Persistent volume claim for world storage
- [ ] GitHub Actions image build
- [x] Download multipaper jar on build
- [x] Copy plugins to node docker image
- [x] Advertise the correct IP to the master
