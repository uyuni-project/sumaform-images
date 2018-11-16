## Trying out a build locally

```
docker run -it --entrypoint "/bin/bash" -v `pwd`:/packer -p 5900:5900 moiosuse/sumaform-images-circleci:latest

cd /packer; packer build
```

In order to see the build progress you can connect via VNC to port 5900 on your host running Docker (see the `-p` option above).

For example, in Ubuntu:
```
sudo apt install xvnc4viewer

xvnc4viewer -Shared 127.0.0.1:5900
```

## Modifying the CircleCI Docker image

```
export REPOSITORY=moiosuse/sumaform-images-circleci
export VERSION=2.1

cd .circleci
docker build -t $REPOSITORY:$VERSION .
docker login
docker push $REPOSITORY:$VERSION
docker tag latest
docker push $IMAGE:latest
```

Note that contributors can use their own public repository in place of moiosuse/sumaform-images-circleci, create one at hub.docker.com.

Refer to this article for more context: https://circleci.com/docs/2.0/custom-images/
