#!/bin/bash

#Install software to bin directory
echo "Creating ${HOME}/bin"
mkdir -p ${HOME}/bin
echo "Copying scripts to ${HOME}/bin"
cp -f ./bin/get_elastic_password ${HOME}/bin && chmod 755 ${HOME}/bin/get_elastic_password
cp -f ./bin/start_elastic ${HOME}/bin && chmod 755 ${HOME}/bin/start_elastic
cp -f ./bin/stop_elastic ${HOME}/bin && chmod 755 ${HOME}/bin/stop_elastic
cp -f ./bin/start_ml_models ${HOME}/bin && chmod 755 ${HOME}/bin/.start_ml_models
cp -f ./bin/stop_ml_models ${HOME}/bin && chmod 755 ${HOME}/bin/.stop_ml_models

#Install software in ${HOME}/src directories
echo "Creating ${HOME}/src/genai"
mkdir -p ${HOME}/src/genai
tar cf - -C ./docker . | tar xf - -C ${HOME}/src/genai
