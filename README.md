# NestJS-Angular Monorepo Starter

Welcome to the NestJS-Angular Monorepo Starter! This repository is a comprehensive mono-repository project that combines the power of Angular 17 and NestJS 10 to create scalable and maintainable full-stack web applications. Utilizing a suite of modern tools such as Lerna, Yarn, and NX, this starter kit is designed for developers who want to streamline their development process using the latest technologies.

By following this README, developers can quickly set up and start working on their full-stack web applications, taking advantage of the monorepo structure for better scalability and maintainability.

## Key Features

 - **Angular 17 Integration**: Leverage the latest features of Angular to build dynamic and responsive front-end applications.
 - **Nest JS 10 Backend**: Develop robust and efficient API services with the structured framework of Nest JS.
 - **Monorepo Management**: Use Lerna, Yarn, and NX to handle multiple services within a single repository, simplifying dependency and version control.
 - **Shared Libraries**: Create and maintain shared libraries to promote code reuse and reduce redundancy across your applications.
 - **Docker Support**: Generalize configurations and ensure consistent environments across services using docker-compose.yml.
 - **MongoDB Server**: Use database server for persistent storage
 - **Redis caching**: Fast and proven caching server support.

## Getting Started

To get started with this monorepo, follow these steps:

Clone the repository to your local machine.

```bash
$ git clone https://github.com/lehcode/nestjs-angular-monorepo-starter.git starter
```

Navigate to the project directory. 

Follow this [detailed setup guide](https://lehcode.medium.com/how-to-create-a-monorepo-with-multiple-services-using-lerna-and-yarn-db7bbc345bac) to initialize your services.

### Dependency Management

Manage your project's dependencies efficiently with [Yarn workspaces](https://classic.yarnpkg.com/lang/en/docs/workspaces/). Ensure that all services are using compatible versions and streamline the update process across your monorepo.

## Adding Services

Integrate [NestJS](https://docs.nestjs.com/) as your API service to handle backend logic and connect it seamlessly with your Angular frontend. This starter kit provides a solid foundation for building your API services.

## Shared Libraries

Take advantage of the shared libraries feature to centralize common code that can be used across different parts of your application, fostering a DRY (Don't Repeat Yourself) codebase.

## Configuration

Use the provided `docker-compose.yml` file to set up and run your services in Docker containers. This ensures that your application runs in consistent environment.

## Running the Application

To build and run the application:

Use Docker to containerize your services:

```bash
~/starter $ docker-compose up --build
```

Access the application through the specified ports in your Docker configuration.

## Contribution Guidelines
Contributions are welcome! If you have improvements or bug fixes, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or fix.
3. Submit a pull request with a clear description of your changes.

Please adhere to the coding standards and commit guidelines provided in the repository.

### License
This project is released under the MIT License. Feel free to use, modify, and distribute the code as you see fit.
