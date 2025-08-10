# php-apache in docker with mysql support

A Docker image for PHP with Apache and MySQL support, built specifically for Linux Ubuntu.

## Features

- PHP 8.3 with Apache
- MySQL support
- WordPress CLI support
- Custom user configuration

## Building the Image

The image is built using Docker BuildX to ensure compatibility with Linux Ubuntu:

```bash
./build.sh <version>
```

This will:
1. Create a BuildX builder for Ubuntu if it doesn't exist
2. Build the image for the Linux/amd64 platform
3. Tag the image with both the specified version and 'latest'
4. Push the images to the Docker registry

## Requirements

- Docker with BuildX support
- Docker registry access for pushing images