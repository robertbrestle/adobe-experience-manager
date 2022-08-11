# AEM Project Archetype
Maven template that creates a minimal, best-practices-based Adobe Experience Manager (AEM) project as a starting point for your website.

# Prerequisites
- [OpenJDK 11](https://jdk.java.net/archive/)
- [Apache Maven 3.6+](https://maven.apache.org/download.cgi)
- install `settings.xml` to `%HOMEPATH%/.m2/`
    - this may be a legacy requirement
- local AEM 6.5.X Author environment

Confirm Maven and Java are configured properly:
```
PS C:\aem> mvn -v
Apache Maven 3.6.3 (cecedd343002696d0abb50b32b541b8a6ba2883f)
Maven home: C:\opt\apache-maven-3.6.3\bin\..
Java version: 11.0.7, vendor: Oracle Corporation, runtime: C:\opt\openjdk11
Default locale: en_US, platform encoding: Cp1252
OS name: "windows 10", version: "10.0", arch: "amd64", family: "windows"
```

# Setup
## Initialize Archetype
Run as administrator:
```
mvn -B org.apache.maven.plugins:maven-archetype-plugin:3.2.1:generate \
  -D archetypeGroupId=com.adobe.aem \
  -D archetypeArtifactId=aem-project-archetype \
  -D archetypeVersion=37 \
  -D aemVersion=6.5.7 \
  -D appTitle="mysite" \
  -D appId="mysite" \
  -D groupId="com.mycompany.mysite" \
  -D frontendModule=general \
  -D includeExamples=n
```

## Maven pom.xml Updates



# References
- [AEM Project Archetype GitHub](https://github.com/adobe/aem-project-archetype)

&nbsp;
