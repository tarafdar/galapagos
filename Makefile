#Makefile for Galapagos

#Author: Naif Tarafdar


# checks that environment variables are set prior to running targets
guard-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Variable $* not set"; \
		exit 1; \
	fi


MIDDLEWARE_DIR = $(GALAPAGOS_PATH)/middleware
SHELLS_DIR = $(GALAPAGOS_PATH)/shells
HLSMIDDLEWARE_DIR = $(GALAPAGOS_PATH)/middleware/hls 

.PHONY: middleware

all: hlsmiddleware middleware

example_shell:
	$(MAKE) -C $(SHELLS_DIR) example 

middleware: ${LOGICALFILE} ${MAPFILE} guard-LOGICALFILE guard-MAPFILE guard-PROJECTNAME guard-GALAPAGOS_PATH 
	$(MAKE) -C $(MIDDLEWARE_DIR) middleware 
	
hlsmiddleware:
	 $(MAKE) -C $(MIDDLEWARE_DIR) hlsmiddleware

clean:
	 $(MAKE) -C $(MIDDLEWARE_DIR) clean
	 $(MAKE) -C $(SHELLS_DIR) clean


