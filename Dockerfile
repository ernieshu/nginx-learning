#1. extend the main nginx image
FROM nginx

#2. setup the two feature flag items - place them in workdir
WORKDIR /workdir
COPY site-content/index.off.html /data/index.off.html
COPY site-content/index.on.html /data/index.on.html

#3. setup this nginx file to be the main index
COPY NginxConfigurationWithFeatureFlags.conf /etc/nginx/nginx.conf