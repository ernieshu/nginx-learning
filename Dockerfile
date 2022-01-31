#1. extend the main nginx image
FROM nginx

#2. setup the two feature flag items - place them in workdir
WORKDIR /workdir
COPY site-content/index.off.html /workdir/toggle-off/index.html
COPY site-content/index.on.html /workdir/toggle-on/index.html

#3. setup this nginx file to be the main index
COPY NginxConfigurationWithFeatureFlags.conf /etc/nginx/nginx.conf