#! /bin/bash

cp ./TwitterSource.java ./flume_conf/flume-sources/src/main/java/com/cloudera/flume/source/
rm -Rf ./flume_conf/flume-sources/src/main/java/com/cloudera/flume/source/.ipynb_checkpoints/
cd ./flume_conf/flume-sources
mvn compile
mvn install
cp target/flume-sources-1.0-SNAPSHOT.jar ../
cd ../..
