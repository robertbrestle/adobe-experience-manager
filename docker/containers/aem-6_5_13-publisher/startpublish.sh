#!/bin/bash

set -e

java -Dadmin.password.file=admin.properties -XX:MaxPermSize=1024M -Xmx2048m -jar cq-quickstart.jar -Dsling.run.modes=dev,publish,dynamicmedia_scene7 -r publish -p 4503 -nointeractive