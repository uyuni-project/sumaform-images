# Deprecated and archived

We now build and publish all images using the Open Build Service: [https://build.opensuse.org/project/subprojects/systemsmanagement:sumaform](https://build.opensuse.org/project/subprojects/systemsmanagement:sumaform)

# sumaform-images

[![CircleCI](https://circleci.com/gh/uyuni-project/sumaform-images/tree/master.svg?style=svg)](https://circleci.com/gh/uyuni-project/sumaform-images/tree/master)

This repo hosts OS images tailored for the [sumaform](https://github.com/moio/sumaform) project.

Images are built on CircleCI and hosted on GitHub.


## Inner workings
 - `.circleci/Dockerfile` defines the container CircleCI uses to build the images. Currently it is based on [HashiCorp Packer's](https://www.packer.io) container plus the [ghr](https://github.com/tcnksm/ghr) GitHub release upload tool
 - `.circleci/config.yml` defines two CircleCI workflows: one for light syntax checking, run at every commit, and one for releases where the images are actually built
 - `*.json` files are Packer descriptors, one per image to build
 - `http` contains Kickstart data which is used to install base images by Packer during build
 - `scripts` contains shell scripts to customize images after install
