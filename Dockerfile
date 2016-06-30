FROM mrebscher/alpinejdk8
MAINTAINER mrebscher

ENV PAYARA_ARCHIVE=payara41 \
 DOMAIN_NAME=domain1 \
 INSTALL_DIR=/opt \
 PAYARA_HOME=${INSTALL_DIR}/payara41/glassfish \
 EXEC=${PAYARA_HOME}/bin \
 DEPLOYMENT_DIR=${PAYARA_HOME}/domains/${DOMAIN_NAME}/autodeploy/

RUN curl -o ${INSTALL_DIR}/${PAYARA_ARCHIVE}.zip -L http://bit.ly/1Gm0GIw && \
  unzip ${INSTALL_DIR}/${PAYARA_ARCHIVE}.zip -d /opt && \
  rm ${INSTALL_DIR}/${PAYARA_ARCHIVE}.zip

ENTRYPOINT asadmin start-domain --verbose ${DOMAIN_NAME}
WORKDIR ${EXEC}
EXPOSE 4848 8009 8080 8181
