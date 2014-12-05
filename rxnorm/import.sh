#!/bin/bash

#unzip rxnorm.zip

git clone http://github.com/chb/py-umls && cd py-umls/databases
sh rxnorm.sh  ../..
cd ..
EXPORT_TYPE=sqlite DID_SOURCE_FOR_SETUP='did' python3 rxnorm_link_run.py
