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
OBJECTS += net/datapipe/CloudStack/destroyVirtualMachine.class
OBJECTS += net/datapipe/CloudStack/createTemplate.class
OBJECTS += net/datapipe/CloudStack/listOsTypes.class
OBJECTS += net/datapipe/CloudStack/listSnapshots.class
OBJECTS += net/datapipe/CloudStack/listAsyncJobs.class
OBJECTS += net/datapipe/CloudStack/listServiceOfferings.class
OBJECTS += net/datapipe/CloudStack/deployVirtualMachine.class
OBJECTS += net/datapipe/CloudStack/listInstanceGroups.class
OBJECTS += net/datapipe/CloudStack/listSSHKeyPairs.class
OBJECTS += net/datapipe/CloudStack/listSecurityGroups.class
OBJECTS += net/datapipe/CloudStack/listNetworks.class
OBJECTS += net/datapipe/CloudStack/listNetworkOfferings.class
OBJECTS += net/datapipe/CloudStack/createVolume.class
OBJECTS += net/datapipe/CloudStack/attachVolume.class
OBJECTS += net/datapipe/CloudStack/listVolumes.class
OBJECTS += net/datapipe/CloudStack/deleteVolume.class

all: CloudStack.jar

CloudStack.jar: $(OBJECTS)
	jar cf CloudStack.jar net/datapipe/CloudStack/*.class

%.class: %.java
	javac -cp /usr/share/java/commons-httpclient.jar:/usr/share/java/xml-commons-apis.jar:. $<
