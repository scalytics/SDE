# Blossom Development Environment (BDE)

Read our [Wiki](https://github.com/databloom-ai/BDE/wiki) how to use BDE, with code examples and how-to's

BDE comes with: 
- Java [11](https://www.azul.com/downloads/?version=java-11-lts&os=ubuntu&architecture=x86-64-bit&package=jdk)
- Maven [3.6.1](https://maven.apache.org/ref/3.6.3/)
- Apache Wayang [0.6.1](https://wayang.apache.org/documentation/)
- Apache Hadoop [2.7.7](https://hadoop.apache.org/docs/r2.7.7/)
- Apache Spark [3.1.2](https://spark.apache.org/docs/3.1.2/)
- iJava [1.3.0](https://github.com/SpencerPark/IJava/releases/tag/v1.3.0)
- Jupyter lab [3.3.0](https://jupyterlab.readthedocs.io/en/3.3.x/)

## Use BDE with our pre-built Docker image
```
docker pull ghcr.io/databloom-ai/bde:main
```

## Build the docker image
```bash
docker build -t blossom ./
```

## Run the docker container
```bash
docker run -p 8888:8888 -v ${HOME}/.ivy2:/home/jovyan/.ivy2 blossom
```

## Execute commands inside the docker container
```bash
docker exec -it $(docker container ls | grep "blossom" | tr " " "\n" | tail -n 1) /bin/bash
```



