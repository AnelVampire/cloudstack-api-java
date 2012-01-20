OBJECTS := net/datapipe/CloudStack/CloudStack.class 
OBJECTS += net/datapipe/CloudStack/CLI.class
OBJECTS += net/datapipe/CloudStack/listVirtualMachines.class
OBJECTS += net/datapipe/CloudStack/listTemplates.class
OBJECTS += net/datapipe/CloudStack/listIsos.class

all: CloudStack.jar

CloudStack.jar: $(OBJECTS)
	jar cf CloudStack.jar net/datapipe/CloudStack/*.class

%.class: %.java
	javac -cp /usr/share/java/commons-httpclient.jar:/usr/share/java/xml-commons-apis.jar:. $<
