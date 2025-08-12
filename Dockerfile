# Use maintained SuiteCRM 8 image
FROM bitnami/suitecrm:8

# Optional: add Apache header for embedding in Streamlit later
# (adjust domain later; safe default is self only — you can edit this file in GitHub later)
RUN install_packages apache2-utils && \
    echo '<IfModule mod_headers.c>\nHeader always set Content-Security-Policy "frame-ancestors '\''self'\''"\nHeader always unset X-Frame-Options\n</IfModule>' \
      > /opt/bitnami/apache/conf/vhosts/zz-embed.conf
