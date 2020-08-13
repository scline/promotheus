docker build . -t snmp-generator
docker run -v ${PWD}/snmp.yml:/opt/snmp.yml -it snmp-generator
