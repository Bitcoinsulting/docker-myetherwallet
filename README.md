# docker-myetherwallet
Run a local copy of myetherwallet.

# Usage
To create a new image using the latest release from [kvhnuke/etherwallet](https://github.com/kvhnuke/etherwallet/releases/latest):
```
$ docker run --rm -it \
    -p 8080:8080 \
    crypt0cash/myetherwallet 
```
Open a browser to http://localhost:8080 to access your new container.

You may also bind to a specific release by starting the container with the `ETHERWALLET_VERSION` environment variable:
```
$ docker run --rm -it \
    -p 8080:8080 \
    -e ETHERWALLET_VERSION=3.8.8 \
    crypt0cash/myetherwallet 
```
> NOTE: A valid version must be specified; there is no error checking at this time.


