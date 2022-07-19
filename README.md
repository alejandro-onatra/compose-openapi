# Swagger Service with Docker Compose
This is a useful way to actually start the Open API server with some Swagg!!

#### Disclaimer
<sup>Only MAC OSX and Linux based operating systems supported</sup>

## Configuration

In order to run this tool you need:
- Docker 
- Docker Compose >=v3.9

### Environment Configuration

The script use the original swagger image environmental variables (see the [Configuration Page](https://github.com/swagger-api/swagger-ui/blob/master/docs/usage/configuration.md#docker)) as well as the following set of properties:

| Parameter Name | Description |
| -------------- | ----------- |
| CONTAINER_VOLUME_PATH | Folder where the spec yml file is located in the container |
| SPEC_FILE_NAME | Name of the spec file |
| LOCAL_VOLUME_PATH | Folder where the spec yml file is located in locally |
| LOCAL_PORT | The local port to be used for the server |


Bear in mind that the order in which the script will look for configurations are as follows:

- Command line parameters
- Custom name environment file
- Default name environment file (```variables.env```)

## Usage
You can use the command with the ```start``` and ```stop``` options to either initialize the service or stop it. To list
the services you can use the ```ps``` option Its quite straightforward. The start command will open a window when in your 
default browser as soon as everything is up and running (you may need to refresh once in case the file is not totally loaded)

When you want to spin up several servers at the same time please bear in mind to use different ```.env``` files adding 
the ```COMPOSE_PROJECT_NAME``` variable with different values for each one of them.

Other route to achieve this is to point to a folder with different specs spinning just one server but that is another type 
of solution.

### Usage Example

Simple start server with default env file
```shell
scripts/swagger-local start 
```

Start specifying the environment variable (bear in mind that the .env file must be in the folder where you call the script)
```shell
scripts/swagger-local start -e myenvironment.env
```
the following is an example environment file 
```yaml
COMPOSE_PROJECT_NAME=swagger-app
SWAGGER_JSON=/api-specs/swagger-file.yml
BASE_URL=/swagger
CONTAINER_VOLUME_PATH=/api-specs
SPEC_FILE_NAME=swagger-file.yml
LOCAL_VOLUME_PATH=/Users/username/Documents/local-api-specs
LOCAL_PORT=80
```
