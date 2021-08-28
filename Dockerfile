FROM ghcr.io/fvilarinho/base-image:1.1.0

LABEL maintainer="fvilarinho@gmail.com"

USER root

RUN apk update && \
    apk --no-cache add rsync \
                       sshpass
    
COPY bin/run.sh ${BIN_DIR}/
COPY bin/install.sh ${BIN_DIR}/child-install.sh
COPY bin/startup.sh ${BIN_DIR}/child-startup.sh
COPY .env ${ETC_DIR}/.release
    
RUN chmod +x ${BIN_DIR}/*.sh && \
    chown -R user:group ${HOME_DIR}/ && \
    chmod -R o-rwx ${HOME_DIR}/

CMD ["${BIN_DIR}/child-startup.sh"]
