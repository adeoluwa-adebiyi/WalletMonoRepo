# WalletMonoRepo
WalletMonoRepo project

This project is an attempt to create a Wallet microservice using event-sourcing architecture. 

NB: Project in Progress

NB: Project is a MonoRepo

To fetch initial files use;

yarn pull

To update submodules to most recent git refs;

yarn checkout

Typical first time pull & update;

yarn pull && yarn checkout

The project utilizes the Choreography Saga Pattern where services subscribe to & emit events based on their database state mutations. Services communicate by emitting state changes in respective databases. Other services can obtain & reconstruct the most recent state of another service's database from the Kafka event log.
Database used for Services: MongoDB.
NB: The event-sourcing is facilitated by Kafka.

## Starting the app

The system has been orchestrated using Kubernetes. If not installed, you can intall a local kubernetes cluster using solutions from Minikube/Ubuntu Microk8s.

The kubernetes config files are located in the k8s directory.

To start a development version of the App, simply type in terminal;

kubectl apply -f k8s

This will launch the deployments & ingress configured in the project

NB: Ingress is configured using Nginx Ingress Controller to launch on domain; supay

NB: The Frontend "WalletWebApp" might need its endpoint URL reconfigured to access the backend.
