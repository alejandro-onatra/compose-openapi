# Swagger Service with Docker Compose
This is a useful way to actually start the Open APi server with some Swagg!!

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
You can use the command with the ```start``` and ```stop``` options to either initialize the service or stop it. To list the services you can use the ```ps``` option Its quite straightforward. The start command will open a window when the 

### Usage Example
```shell
scripts/swagger-local start 
```
the following is an example environment file 
```yaml
SWAGGER_JSON=/api-specs/swagger-file.yml
BASE_URL=/swagger
CONTAINER_VOLUME_PATH=/api-specs
SPEC_FILE_NAME=swagger-file.yml
LOCAL_VOLUME_PATH=/Users/username/Documents/local-api-specs
LOCAL_PORT=80
```