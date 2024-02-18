# Scalytics Connect Development Environment (SDE)

Read our [Wiki](https://github.com/scalytics/BDE/wiki) how to use BDE, with code examples and how-to's

SDE comes with: 
- Java [11](https://www.azul.com/downloads/?version=java-11-lts&os=ubuntu&architecture=x86-64-bit&package=jdk)
- Maven [3.6.1](https://maven.apache.org/ref/3.6.3/)
- Apache Wayang [0.6.1](https://wayang.apache.org/documentation/)
- Apache Hadoop [3.1.2](https://hadoop.apache.org/docs/r3.1.2/)
- Apache Spark [3.1.2](https://spark.apache.org/docs/3.1.2/)
- iJava [1.3.0](https://github.com/SpencerPark/IJava/releases/tag/v1.3.0)
- Jupyter lab [3.3.0](https://jupyterlab.readthedocs.io/en/3.3.x/)

## Starting the SDE

You can bring the SDE up and running by executing the command

```shell
docker compose up
```

## Using custom input files

If you need the BDE to process your custom files, you can do this by altering the docker-compose.yml.

Change this part

```
  jupyter:
    build: jupyter
    ports:
      - "8888:8888"
    extra_hosts:
      - "host.docker.internal:host-gateway"  
```

to this:

```
  jupyter:
    build: jupyter
    ports:
      - "8888:8888"
    extra_hosts:
      - "host.docker.internal:host-gateway"
    volumes:
      - /path/to/custom/input/files:/home/jovyan/files
```

Your files should be located in a known location on your machine (referred to as `/path/to/custom/input/files`). These files will be accessible within your BDE under the path files (for example, `files/my.custom.file`).

## Connecting to a database on localhost

Use `host.docker.internal` instead of `localhost`.
