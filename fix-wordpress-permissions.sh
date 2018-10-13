#!/bin/bash
#
# This script configures WordPress file permissions based on recommendations
# from http://codex.wordpress.org/Hardening_WordPress#File_permissions
#
# Fork from https://github.com/mconigliaro/notes/blob/master/wordpress/permissions.md
#
# To use this script run:
# ./fix-wordpress-permissions.sh [CONTAINER]
#

WP_OWNER=www-data  # <-- wordpress owner
WP_GROUP=www-data  # <-- wordpress group
WP_CONTAINER=$1    # <-- Docker Container running wordpress

docker exec -it ${WP_CONTAINER} /bin/bash -c " \
      chown --recursive --changes ${WP_OWNER}:${WP_GROUP} wp-content    \
   && find wp-content -type f -exec chmod --changes 0664 {} \;          \
   && find wp-content -type d -exec chmod --changes 0775 {} \;          \
"
