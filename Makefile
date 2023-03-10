
SHELL:=/bin/bash

AZURETRE_HOME?="AzureTRE"

include $(AZURETRE_HOME)/Makefile

# Add your make commands down here
user_resource_bundle_custom:
	$(MAKE) bundle-build bundle-publish bundle-register \
	DIR="./templates/workspace_services/${WORKSPACE_SERVICE}/user_resources/${BUNDLE}" BUNDLE_TYPE=user_resource WORKSPACE_SERVICE_NAME=tre-service-${WORKSPACE_SERVICE}
