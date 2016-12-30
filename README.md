# Sonatype Lifecycle Docker Container

Sonatype Nexus Lifecycle is a Java and Javascript lifecycle manager that includes artifact and package scanning. You must have a [license](https://www.sonatype.com/nexus-lifecycle) in order to use this software.

### Basic Usage

To run the container with an exposed port on the host of 8070 (the default port of Sonatype) and a volume on the host to store the configuration data, run this command:

	$ docker run -d -p 8070:8070 -v /home/user/sonatype:/opt/sonatype/sonatype-work -v /home/user/sonatype-log:/opt/sonatype/log fastglass/sonatype-lifecycle

### Arguments

* **Exposed ports**: 22
* **Volumes**:
 	* */sonatype-work/*: Volume to store the Sonatype data
	* */log/*: Volume to store the server logs

### Build Image 

	$ docker build -t sonatype-lifecycle

**Note: This Docker container is not associated with Sonatype and is not an official container. Sonatype Lifecycle is downloaded from Sonatypes [website](https://www.sonatype.com/) in the build process.**