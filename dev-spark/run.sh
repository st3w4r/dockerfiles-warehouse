docker run -it --rm --name dev-spark --network spark_network -v $PWD:/volume -p 8080:8080 -p 8081:8081  st3w4r/dockerfiles-warehouse:dev-spark /bin/bash
