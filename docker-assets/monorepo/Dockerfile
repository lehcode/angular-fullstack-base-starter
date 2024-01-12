# This Dockerfile creates a backend image with NestJS using the provided Node version.
# It also maps privileges from the host to the image, updates repositories, installs 
# necessary applications, installs global packages, sets configuration options, copies 
# an entrypoint script, and sets the user and working directory.

# Use Node.js version specified as an argument
ARG NODE_VERSION
FROM node:${NODE_VERSION}

# Set metadata for the image
LABEL org.opencontainers.image.authors="Anton Repin <lehcode@gmail.com>"
LABEL org.opencontainers.image.copyright="Anton Repin"
LABEL org.opencontainers.image.description="Backend image with NestJS"

# Set debug mode, user, user ID, group, group ID, and monorepo root as arguments
ARG DEBUG
ENV DEBUG=${DEBUG}
ARG USER
ENV USER=${USER}
ARG UID
ENV UID=${UID}
ARG GROUP
ENV GROUP=${GROUP}
ARG GID
ENV GID=${GID}
ARG MONOREPO_ROOT
ENV MONOREPO_ROOT=${MONOREPO_ROOT}

# Set debugging options and output versions of Node and NPM
RUN if [ "${DEBUG}" != "yes" ]; then set -e; else set -ex && env; fi \
	&& echo "Building backend service image using\n\tNode.js: v${NODE_VERSION}\n" \
	# Map privileges from host to image
	&& echo "Mapping privileges from host\n\tuser: ${USER}(${UID})\n\tgroup: ${GROUP}(${GID})" \
    && groupmod -g 1111 node && usermod -u 1111 -g 1111 node \
    && groupadd -g ${GID} ${GROUP} \
    && useradd -m -d "/home/${USER}" -u "${UID}" -g "${GID}" "${USER}" \
    && chmod 775 "/home/${USER}" \
    # Update repositories and install necessary applications
    && echo "Updating repositories" \
    && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - > /dev/null \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee "/etc/apt/sources.list.d/yarn.list" > /dev/null \
    && echo "Installing necessary applications" \
    && apt-get update > /dev/null \
    && apt-get upgrade -y > /dev/null \
    && apt-get install -y --no-install-recommends --no-install-suggests sudo yarn less nano > /dev/null \
    && echo "${USER}\t\tALL=(ALL:ALL)\tNOPASSWD:ALL" | tee --append /etc/sudoers > /dev/null \
    && echo "Cleaning up" \
    && apt-get clean > /dev/null \
    # Install global packages and set configuration options
    && echo "Installing global packages" \
    && yarn global add @nestjs/cli npm lerna nx @nx/nest @nx/angular @nx/workspace npm-check-updates \
    && npm config --global set update-notifier false \
    && echo "NodeJS: $(node -v)" \
    && echo "NPM: v$(npm --version)" \
    && echo "Yarn: v$(yarn --version)" \
    && echo "NestJS: v$(nest -v)"

# Copy entrypoint script and set user and working directory
COPY entrypoint.sh /init.sh

USER ${USER}:${GROUP}
WORKDIR ${MONOREPO_ROOT}
