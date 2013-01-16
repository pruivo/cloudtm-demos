#!/bin/bash

WORKING_DIR=`cd $(dirname $0); pwd`;
MAIN_CLASS="test.MainApp"
JVM_OPTIONS="-Xmx1G"
HOSTNAME=`hostname -s`
D_VARS="-Djava.net.preferIPv4Stack=true"
D_VARS="${D_VARS} -Djgroups.bind_addr=${HOSTNAME}"

#set the class path
CP=${WORKING_DIR};
for jar in `ls ${WORKING_DIR}/lib/*.jar`;
do
CP="${CP}:${jar}";
done

CMD="java ${JVM_OPTIONS} ${D_VARS} -cp ${CP} ${MAIN_CLASS} ${HOSTNAME}"

echo $CMD
eval $CMD
exit 0