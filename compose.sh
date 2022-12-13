#!/bin/bash

# As long as host and container share the same home folder,
# create a file for SSH client to track the known hosts in the container
# (see the volume mapping in docker-compose.yml)
# separately from the host, in order to avoid misinterpretation of "localhost".
touch known_hosts

# Export the user id records, so that the entrypoint script could
# create exactly the same user account in the container (see entrypoint.pl).
export ID=$(id)

# Finally, start container as a background service.
docker-compose up -d
