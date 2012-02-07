OBJECTS := net/datapipe/CloudStack/CloudStack.class 
OBJECTS += net/datapipe/CloudStack/CLI.class
OBJECTS += net/datapipe/CloudStack/listVirtualMachines.class
OBJECTS += net/datapipe/CloudStack/listTemplates.class
OBJECTS += net/datapipe/CloudStack/listIsos.class
OBJECTS += net/datapipe/CloudStack/authorizeSecurityGroupIngress.class
OBJECTS += net/datapipe/CloudStack/queryAsyncJobResult.class
OBJECTS += net/datapipe/CloudStack/listZones.class
OBJECTS += net/datapipe/CloudStack/stopVirtualMachine.class
OBJECTS += net/datapipe/CloudStack/startVirtualMachine.class
OBJECTS += net/datapipe/CloudStack/createTemplate.class
OBJECTS += net/datapipe/CloudStack/listOsTypes.class
OBJECTS += net/datapipe/CloudStack/listSnapshots.class
OBJECTS += net/datapipe/CloudStack/listAsyncJobs.class

all: CloudStack.jar

CloudStack.jar: $(OBJECTS)
	jar cf CloudStack.jar net/datapipe/CloudStack/*.class

%.class: %.java
	javac -cp /usr/share/java/commons-httpclient.jar:/usr/share/java/xml-commons-apis.jar:. $<
