FROM verdaccio/verdaccio:4.1.0

ARG ENV=development
ARG plugins=""
#"\
#   verdaccio-github-oauth \
#    verdaccio-github-oauth-ui \
#    verdaccio-audit \
#    verdaccio-google-cloud \
#    verdaccio-gitlab \
#    verdaccio-profile-api \
#    verdaccio-bitbucket-server \
#    verdaccio-coauth\
#"
# RUN yarn add $plugins

ADD verdaccio.config.yaml /verdaccio/conf/config.yaml

USER root
RUN apk --no-cache add curl

USER verdaccio
