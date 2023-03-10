# Summary

Science gateways that execute jobs on ACCESS resource provider resources
report usage through an ACCESS-provided REST service. Usage statistics
are available through XDMoD.

# Prerequisites

1.  The gateway must have an allocation and a community account. See
    > “Science Gateway Community Accounts”.

# Effort

The science gateway provider should follow the instructions at
[*https://allocations-api.access-ci.org/acdb/*](https://allocations-api.access-ci.org/acdb/).

After integration, the gateway provider should verify that usage is
being correctly reported in the ACCESS XDMoD system,
[*https://xdmod.access-ci.org/*](https://xdmod.access-ci.org/). The
gateway provider can also use REST API calls to verify information
reporting; see
[*https://allocations-api.access-ci.org/acdb/*](https://allocations-api.access-ci.org/acdb/).

# Description

Science gateways that submit jobs to high performance computing and
other resources must provide additional information, such as the user
name, to supplement usage information associated with community accounts
that is gathered automatically by the XDMoD system. This allows resource
providers and access to more accurately track and report the number of
users of their systems.

ACCESS provides a simple REST API for this reporting. Science gateways
can also use other API methods to programmatically access usage
information for individual users of the community account.
