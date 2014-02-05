#!/usr/bin/env bash

rm -rf bin lib header-extractor && sync
./sbt clean test package universal:package-zip-tarball && sync
tar zxf target/universal/header-extractor-0.1-SNAPSHOT.tgz && sync
mv header-extractor-0.1-SNAPSHOT/* . && sync
rm -rf header-extractor-0.1-SNAPSHOT && sync
