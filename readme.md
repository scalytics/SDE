### Blossom Development Environment (BDE)

 1. `docker build -t blossom-bde-async .`
 2. `docker run -v ./output:/app/output -it blossom-bde-async:latest WordCount`