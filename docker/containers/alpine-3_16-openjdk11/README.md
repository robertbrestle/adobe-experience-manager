# Alpine 3.16 with OpenJDK11 + Dependencies
This is the base image for our AEM containers.

# Build
`docker build -t alpine-3_16-openjdk11 .`

# Run
`docker run -it alpine-3_16-openjdk11`

# Test
~~~
bash-5.1# java --version
openjdk 11.0.15 2022-04-19
OpenJDK Runtime Environment (build 11.0.15+10-alpine-r1)
OpenJDK 64-Bit Server VM (build 11.0.15+10-alpine-r1, mixed mode)

bash-5.1# javac --version
javac 11.0.15
~~~

# References
- [Docker Alpine image](https://hub.docker.com/_/alpine)

&nbsp;