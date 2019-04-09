################################################################################
# Shared targets used across Makefiles in Galapagos. Contains:
#	- guard-%
#
# Author: Varun Sharma
#
# Changelog:
#	1.0 - Apr. 9 2019 - Created (VS)

# Asserts that the specified variable exists. It can be used as a prerequisite 
# for running other targets. E.g. adding guard-FOO to a target enforces that 
# the variable FOO is defined before running the target.
################################################################################

ifndef GALAPAGOS_PATH
$(error GALAPAGOS_PATH is not set)
endif

guard-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "Variable $* not set"; \
		exit 1; \
	fi
