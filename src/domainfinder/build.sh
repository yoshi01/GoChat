#!/bin/bash
echo sprinkleをビルドします...
cd ../sprinkle
go build -o ../domainfinder/lib/sprinkle
echo domainfyをビルドします...
cd ../domainify
go build -o ../domainfinder/lib/domainify
echo domainfinderをビルドします...
go build -o domainfinder
echo 完了
