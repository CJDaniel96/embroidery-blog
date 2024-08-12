## Project Title
This is a multi-container application that includes a database, backend, frontend, and a web server. The application is orchestrated using Docker Compose.

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

#### Prerequisites
- Docker
- Docker Compose

#### Installation
1. Clone the repository
```sh
git clone <repository-url>
```
2. Navigate to the project directory
```sh
cd <project-directory>
```
3. Build and run the Docker containers
```sh
docker-compose up --build
```

## Services
The application consists of the following services:

- `db`: This is a PostgreSQL database. The service uses the official postgres:16 Docker image. The database data is persisted using Docker volumes.

- `backend`: This is the backend service of the application. It depends on the db service.

- `frontend`: This is the frontend service of the application. It is served by a Node.js server.

- `nginx`: This is a Nginx server that acts as a reverse proxy to route requests to the backend and frontend services.

## Environment Variables
The application uses the following environment variables:

`POSTGRES_DB`: The name of the PostgreSQL database.
`POSTGRES_USER`: The username for the PostgreSQL database.
`POSTGRES_PASSWORD`: The password for the PostgreSQL database.

## Volumes
The application uses the following Docker volumes:

- `postgres_data`: This volume is used to persist the data of the PostgreSQL database.
- `static`: This volume is used to share static files between the backend and nginx services.

## Networks
The application uses a single Docker network called webnet. All services are part of this network.

## Ports
The following ports are used by the services:

- `db`: 5432
- `frontend`: 8080
- `nginx`: 80

## Contributing
Please read CONTRIBUTING.md for details on our code of conduct, and the process for submitting pull requests to us.

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.