### Blossom Development Environment (BDE)

1. To build the container run `docker build -t blossom-bde-async .`
2. To run the container run `docker run -v ./output:/app/output -it blossom-bde-async:latest mainClass`, where `mainClass` can be `async.WordCount`, `multicontext.WordCount`, etc...
3. The code gets executed inside the container which has all the necessary dependencies setup. 
4. Observe the output in the newly created `output` directory. 