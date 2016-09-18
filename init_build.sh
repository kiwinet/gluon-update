#!/bin/bash
##

source /opt/gluon-update-scripts/config.ini

if [ -z $1 ] or [ $1 != 'stable' ] or [ $1 != 'beta' ] or [ $1 != 'experimental' ]
	print 'stable, beta or experimental'
	exit 1
fi

if [ ! -d $BASE_DIR ]
	mkdir $BASE_DIR
fi

if [ -d $BASE_DIR/$1 ]
	cd $BASE_DIR/$1
else
	mkdir $BASE_DIR/$1
fi

git clone $REPO gluon -b $GLUON_RELISE
cd ./gluon
git clone $SITE_REPO site -b v2016.1.6

