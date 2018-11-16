## Trying out a build locally

```
docker run -it --entrypoint "/bin/bash" -v `pwd`:/packer moiosuse/sumaform-images-circleci:2.1

cd /packer; packer build
```

## Modifying the CircleCI Docker image

```
export REPOSITORY=moiosuse/sumaform-images-circleci
export VERSION=2.1

cd .circleci
docker build -t $REPOSITORY:$VERSION .
docker login
docker push $REPOSITORY:$VERSION
```

Note that contributors can use their own public repository in place of moiosuse/sumaform-images-circleci, create one at hub.docker.com.

Refer to this article for more context: https://circleci.com/docs/2.0/custom-images/
