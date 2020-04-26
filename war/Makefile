JETTY_VERSION := 9.4.28.v20200408

target/jetty-runner.jar:
	curl https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-runner/${JETTY_VERSION}/jetty-runner-${JETTY_VERSION}.jar -o target/jetty-runner.jar

package:
	mvn package

start: target/jetty-runner.jar package
	java -jar target/jetty-runner.jar --path / target/javawebapp.war