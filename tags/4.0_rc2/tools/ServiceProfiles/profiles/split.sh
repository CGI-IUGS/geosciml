#!/bin/bash
#------------------------------------------------------------------------------
# split requirements and conformance targets out of profiles
#------------------------------------------------------------------------------
# $Id$
#------------------------------------------------------------------------------

for dir in `cat list` ;do
    
    if [ ! -d $dir ] ; then
	echo $dir does not exist or not a directory
	exit 1
    fi

    cd $dir
    filename="$dir.xml"

    if [ ! -f $filename ] ; then
	echo $filename does not exist
	exit 1
    fi

    mv ${filename} profile.xml

    echo "processing ${filename}"

    java -jar /home/jacekrad/workspace/wipe/lib/saxon8.jar \
	-o ${filename} \
	-s profile.xml \
	/home/jacekrad/workspace/wipe/xsl/util/extract_requirements_and_targets.xsl 

    cd -

done


