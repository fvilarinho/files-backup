Synopsys
========

This a base image to backup files (local/remote).
It uses the `ghcr.io/fvilarinho/base-image` and [rsync](https://rsync.samba.org/).
The configurations/settings are defined using the JSON format and stored in the `etc` directory.


Build status
============

![CI/CD](https://github.com/fvilarinho/files-backup/workflows/CI/CD/badge.svg)


How to use
==========

Just put the line below in your Dockerfile.

`FROM ghcr.io/fvilarinho/files-backup:1.0.0` - To use the last stable version.

`FROM ghcr.io/fvilarinho/files-backup:latest` - To use the development version.


License
=======

This image is licensed under the Apache 2.0. Please read the licence file or check the URL [https://www.apache.org/licenses/LICENSE-2.0.txt](https://www.apache.org/licenses/LICENSE-2.0.txt)


Author
======

My name is Felipe Vilarinho (A.K.A Vila) and you can know more about me at the social medias below:

1. [LinkedIn](https://br.linkedin.com/in/fvilarinho)

Or send an email to fvilarinho@gmail.com or fvilarinho@concepting.com.br

Have Fun!

Best