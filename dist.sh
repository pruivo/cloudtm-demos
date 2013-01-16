#!/bin/bash

for i in scenario1 scenario2 scenario3 scenario4;
do
cd $i;
echo "Processing $i"
mvn clean package && cp target/${i}*.zip ../dist/${i}-ispn.zip;
mvn clean package -Dfenixframework.code.generator=pt.ist.fenixframework.backend.ogm.OgmCodeGenerator && cp target/${i}*.zip ../dist/${i}-ogm.zip;
cd -;
done;
