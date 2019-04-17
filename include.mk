################################################################################
# Shared targets used across Makefiles in Galapagos. Contains:
#	- guard-%
#
# Author: Varun Sharma
#
# Changelog:
#	1.0 - Apr. 9 2019 - Created (VS)
################################################################################

ifndef GALAPAGOS_PATH
$(error GALAPAGOS_PATH is not set)
endif

ifndef GALAPAGOS_HLS_VERSION
$(error GALAPAGOS_HLS_VERSION is not set)
endif

ifndef GALAPAGOS_PART
$(error GALAPAGOS_PART is not set)
endif

ifndef GALAPAGOS_VIVADO_PATH
$(error GALAPAGOS_VIVADO_PATH is not set)
endif

ifndef GALAPAGOS_BOARD_NAME
$(error GALAPAGOS_BOARD_NAME is not set)
endif

ifndef GALAPAGOS_HLS_PATH
$(error GALAPAGOS_HLS_PATH is not set)
endif

ifndef GALAPAGOS_PART_FAMILY
$(error GALAPAGOS_PART_FAMILY is not set)
endif

# GALAPAGOS_BOARD is not asserted because it's optional to have a board file

# Asserts that the specified variable exists. It can be used as a prerequisite 
# for running other targets. E.g. adding guard-FOO to a target enforces that 
# the variable FOO is defined before running the target.
guard-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Variable $* not set"; \
		exit 1; \
	fi
