Docker Node Server
====

Test of creating a node-js server in a Docker container.

[Heavily based on](https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md)

### Building

The `Makefile` encapsulates the basic commands to build and run the example.

#### `make package`

Builds a local instance of the container

#### `make run`

Package and run the container

#### `make run-prod`

Use the `run_prod_server` script to start the server in 'prod' mode.


