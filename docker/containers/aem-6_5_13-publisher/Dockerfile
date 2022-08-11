FROM alpine-3_16-openjdk11

# Create dependency installation directory and parents
RUN mkdir -p /mnt/crx/publish/crx-quickstart/install
WORKDIR /mnt/crx/publish

# Copy start script and properties override
COPY ./startpublish.sh ./
COPY ./admin.properties ./

# Provided by Adobe 
COPY ./license.properties ./
COPY ./cq-quickstart-6.5.0.jar ./cq-quickstart.jar

# Service Pack 6.5.13.0
# https://experienceleague.adobe.com/docs/experience-manager-65/release-notes/release-notes.html?lang=en
COPY ./aem-service-pkg-6.5.13.0.zip /mnt/crx/publish/crx-quickstart/install/aem-service-pkg-6.5.13.0.zip

# AEM WCM Core Components
# https://github.com/adobe/aem-core-wcm-components
COPY ./core.wcm.components.all-2.19.2.zip /mnt/crx/publish/crx-quickstart/install/core.wcm.components.all-2.19.2.zip

# ACS AEM Commons
# https://github.com/Adobe-Consulting-Services/acs-aem-commons
COPY ./acs-aem-commons-content-5.3.0.zip /mnt/crx/publish/crx-quickstart/install/acs-aem-commons-content-5.3.0.zip


EXPOSE 445 4503

# Unpack the AEM JAR
RUN java -jar cq-quickstart.jar -unpack

ENTRYPOINT ["/mnt/crx/publish/startpublish.sh"]
