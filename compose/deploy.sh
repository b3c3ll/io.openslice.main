#!/bin/sh

dirlocation=`pwd`/.
echo "We're working with $dirlocation"
cd $dirlocation


updaterepo(){
        cd $dirlocation
        echo "Build " $1
        if [ ! -d $1 ]; then
                git clone https://github.com/openslice/$1.git
                cd $1/
        else
                cd $1/
                git checkout master
                git pull
        fi
}


updaterepo io.openslice.main
updaterepo io.openslice.sol005nbi.osm
updaterepo io.openslice.sol005nbi.osm5
updaterepo io.openslice.sol005nbi.osm7
updaterepo io.openslice.sol005nbi.etsi
updaterepo io.openslice.centrallog.client
updaterepo io.openslice.centrallog.service
updaterepo io.openslice.model
updaterepo io.openslice.portal.api
updaterepo io.openslice.gateway.api
updaterepo io.openslice.mano
updaterepo io.openslice.bugzilla
updaterepo io.openslice.osom
updaterepo io.openslice.portal.web
updaterepo io.openslice.tmf.api
updaterepo io.openslice.tmf.web

cd $dirlocation
docker run -it --rm -v "/home/ubuntu/.m2":/root/.m2 -v "$(pwd)":/opt/maven -w /opt/maven/io.openslice.main adoptopenjdk/maven-openjdk13:latest mvn clean verify -DskipTests

cd $dirlocation/io.openslice.tmf.web
docker run -u 0 --rm -v "$PWD":/app trion/ng-cli npm install
docker run -u 0 --rm -v "$PWD":/app trion/ng-cli ng build --prod
