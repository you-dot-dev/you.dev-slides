#/bin/bash

docker stop 0000-getting-started ;

docker build . -f Dockerfiles/0000-getting-started.Dockerfile -t 0000-getting-started ;

docker run -d --rm -p 8000:8000 --name 0000-getting-started 0000-getting-started ;
