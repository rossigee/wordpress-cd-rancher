FROM rossigee/wordpress-cd

RUN apk -U add docker

# Install the CI scripts
ADD dist /dist
RUN pip install /dist/wordpress-cd-rancher-0.1.1.tar.gz

