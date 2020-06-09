# NodeJS with Docker

This is a simple app to demonstrate how to set up Docker for NodeJS. 

&nbsp;

## Start Server
To start the server in the foreground (allows for server debugging), use:

```bash
docker-compose up
```

To start the server in the background (free to use the terminal, but no debugging):

```bash
docker-compose up -d
```

&nbsp;

## Test Server
You can test the server is functioning with the following terminal commands:

**GET**
```bash
curl -X GET localhost:2001
```

**POST**
```bash
curl -X POST localhost:2001 -H "Content-Type: application/json" -d '{"data": "This is some data"}'
```

&nbsp;

## Close Test Server
To close the test server:

```bash
docker-compose down
```

> Note: You will need to exit the foreground process if you didn't use the -d flag when starting the server (CTRL + C)