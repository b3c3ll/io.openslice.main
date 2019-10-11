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
                git pull
        fi
}


updaterepo io.openslice.portal.api
updaterepo io.openslice.main
updaterepo io.openslice.sol005nbi.osm5
updaterepo io.openslice.model
updaterepo io.openslice.bugzilla
updaterepo io.openslice.gateway.api
updaterepo io.openslice.oauth.server
updaterepo io.openslice.tmf.api

cd $dirlocation
docker run -it --rm -v "/home/ubuntu/.m2":/root/.m2 -v "$(pwd)":/opt/maven -w /opt/maven/io.openslice.main maven:3.5.2-jdk-8 mvn verify -DskipTests