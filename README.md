![Seltris image](./resources/seltris-title.png)

# Welcome

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="display: block; border-width:0; float: right" align="left" src="https://i.creativecommons.org/l/by/4.0/88x31.png"/></a><br/>

Welcome to the Seltris project. This image is part of the [Drako](https://github.com/v8tix/drako) project.

#### Prerequisites
* Docker Engine installed.

## What this guide covers
1. The Seltris image contexts.
2. Seltris configuration.
3. Common operations.
### 1. The Seltris image contexts.
* The following figure shows these contexts:
![Seltris image](resources/seltris-contexts.png)
* In this case Seltris only uses one context: 
  * Configuration and packages: 
    * Seltris adds to its Entry Point a special function that lets you run a Spring Boot application.  
* :bulb: You can use Seltris on production environments.    
### 2. Seltris configuration.
* :exclamation: Under the configuration directory you will find a file called const.sh. Please review this file carefully and make the necessary changes.  
* Each constant is described below:
  * HOST_PORT: The TCP port on the Docker host. By default is 8080.
  * CNTR_PORT: The TCP port on the Docker container. By default is 8080.
  * HOST_MICROSERVICE_DIR: The host directory where Docker will search for your artifacts. 
    * Inside this directory you must create two subdirectories:
      * fatjar: Place your compiled artifact here.  
      * config: Your configuration file needed by your fatjar must be here.
  * CNTR_MICROSERVICE_DIR: The container directory where Docker will mount your artifacts.
  * FATJAR_NAME: The compiled artifact name.      
  * JAVA_IO_DIR: The [Java temporary directory](https://examples.javacodegeeks.com/core-java/io/java-io-tmpdir-example/) needed by the JVM. Take a look to the Docker file before modifying this constant. 
### 3. Common operations.
* At the root directory you will find the following directories.
  * configuration:
    * Here you can change the image name and its tag. 
  * build.
    * The Docker file and the container artifacts need must be included here.
    * Also in this directory you can find the build.sh script. Execute it if you plan to build this image. 
    * Once the image was built, you can go to the executables directory.
  * executables.
    * Each script under this directory wraps a useful Docker command.
    * To give it a try:
      * You need a Spring Boot application first. The Social microservice is a good fit, you find it following this [link](https://github.com/v8tix/social).
      * Then, be sure you meet all the requirements described in step 2.
      * Now you can execute the run.sh script. This starts a detached container.
        * To get a console, you will need to execute the attach.sh script.
        * :bulb: Like in SSH remote connections, you will need to write 'exit' and then press Enter to close the opened connection.
      * Once you are done with this container, there are two ways to stop it:
        * If you want to just stop it and keep this image, execute the stop.sh script, or         
        * you want to stop it and you no longer need this image, execute the delete.sh script instead.
## Authors
* Initial work
  * V8TIX - info@v8tix.com   
## License  
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="display: block; border-width:0; float: right" align="left" src="https://i.creativecommons.org/l/by/4.0/88x31.png"/>&nbsp;</a>This work is licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).  
  













 