Add an executable file into /usr/local/bin

```
#!/bin/bash
docker run -it --rm --name dev-python -v $PWD:/app -w /app dev-python /bin/bash
docker exec -i -w /app --user=1000:1000 dev-python pylama ${@:1}
```
