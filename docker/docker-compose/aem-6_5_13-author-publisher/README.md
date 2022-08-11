# AEM 6.5.13 Author + Publisher
This Docker compose stack runs an AEM author and publisher containers.

Based on:
* Alpine Linux 3.16
* OpenJDK11
* Utils install bash-vim-curl-unzip-zip-jq

# Installation
Copy `docker-compose.yml` to a new folder

# Running
Ensure the Docker service is started before 
`sudo service docker start`

## Status
`sudo docker compose ps -a`

## Start
`sudo docker compose up -d`

**NOTE: you need to be in the same folder as `docker-compose.yml` to execute this command**

## Stop
`sudo docker compose down -d`

---

# Dispatcher
If you'd like this stack to work with an Apache 2.4 Dispatcher, you will need to perform the following:
1. Install Apache 2.4
    - `sudo yum install httpd -y`
2. Copy your Apache dispatcher configuration files to the server
	- Reference `dispatcher-configuration/httpd/`
3. Verify the Apache Installation
    - `apachectl configtest`
    - Resolve any errors found before continuing
4. Install the systemd service to run on startup
    - Follow the commands at the bottom of `aem6513authorpublish.service`

Originally designed for our development environments, this defined dispatcher setup utilizes hostnames to determine traffic routing. In higher environments, load balancers with listeners to target groups are used. Locally, you can set your [hosts file](https://en.wikipedia.org/wiki/Hosts_(file)) to route traffic to the dispatcher and thus your AEM instances.

---

# Setup Replication
To setup replication between the Author and Publisher containers, you need to change the following settings:  
1. Open the default publish agent on the Author  
    a. http://localhost:4502/etc/replication/agents.author/publish.html
2. Click **Edit**  
3. Under the **Transport** tab, change the domain from `localhost` to `localhostpublish`  
4. Click OK  
5. Click **Test Connection** and check the bottom for `Replication test succeeded`  
