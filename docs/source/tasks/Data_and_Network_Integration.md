---
subtitle: "[]{#_30j0zll .anchor}Integration Roadmap Task"
title: "[]{#_gjdgxs .anchor}Data & Network Integration"
---

**Task Type(s**): Coordination, Technology, Support\
**Start by phase**: Integration\
**Complete by phase**: Operations, Ongoing\
**RP role(s)**: Data storage, networking, and sysadmin contact(s)

# Summary

Meeting data transfer requirements requires an understanding of storage
system, application requirements, and site network connectivity. While
available data transfer options are determined by site preferences,
ACCESS network engineers and data transfer specialists will continue to
facilitate those options by: 1) offering a Globus subscription through
at least Project Year 1 (ending 31-Aug-2023); 2) identifying,
evaluating, and encouraging the use of promising data transfer
applications; and 3) consulting with sites upon request to help them
tackle data transfer application and infrastructure challenges.

# Prerequisite tasks

# None

# Support Information

For assistance with this task see the *Support Information* section in
the *Integration Roadmap Description*.

# Detailed Instructions

## Planning

# To help in planning for adequate data movement and networking capability, consider the following:

### Storage and file transfer applications:

1.  What part(s) of your resource needs to be accessible for data
    > transfer into and/or out of your site?

2.  For bulk data transfer (datasets in \~100GB range and larger on
    > ACCESS CONECTnet):

    a.  Describe your storage system characteristics, types, and
        > partitions

        i.  POSIX filesystems are currently the norm in ACCESS, but some
            > new resources have other storage---tape archives, object
            > stores, cloud storage---so please think about which
            > should/should not be available for ACCESS data transfer.
            > Are any of these parallel/high-performance filesystems,
            > such as HPSS, Lustre, or GPFS?

    b.  Do you have a throughput goal for data transfers?

    c.  What transfer throughput do you anticipate your ACCESS users
        > will need in order to accomplish their research objectives?

    d.  Does your site have a [[Science
        > DMZ]{.underline}](https://fasterdata.es.net/science-dmz/) for
        > supporting bulk data transfer?

3.  Other than bulk data transfer, does your resource provide
    > applications that have particular network throughput requirement
    > characteristics, e.g., real-time streaming data, interactive,
    > streaming video, etc?

4.  Do any of these applications require special network features (e.g.,
    > QoS, reservations)?

5.  Does your site currently, or are you willing to, host a network
    > performance monitor (perfSONAR) to help ACCESS monitor and
    > diagnose end-to-end network behaviors?

### Network connectivity:

1.  Who is your site's wide area connectivity provider?

    a.  High performance 'research and education' provider (e.g.,
        > Internet2, ESnet)

    b.  Commodity (e.g., Comcast, Charter, Verizon, AT&T)

2.  What is your site's WAN connection speed?

3.  What is the typical utilization of your site's WAN connection?

4.  What is your resource's connectivity, and how much of that do you
    > think will be needed for "typical" ACCESS uses?)

5.  DNS

Connectivity via the CONECTnet L3VPN on Internet2 is an option for
ACCESS RPs and provides valuable performance metrics collection and
reporting and....

## Data Transfer

The supported file transfer applications for ACCESS are currently scp,
sftp, rsync, and Globus. scp, sftp, and rsync are commonly used file
transfer applications. Other than verifying that the servers are running
(system administrators) and accessible (network engineers for site
firewalls; system administrators for IPtables, firewalld, etc.), these
applications likely will not require special configuration and
management for use by ACCESS participants.

Globus requires specific system, application, and (potentially) hardware
configuration. Please see the ACCESS CONECT document [*[Deploy Globus
Endpoint]{.underline}*](https://docs.google.com/document/d/19xv0ahgH8m4pFsu5LabYdOVSaNjmB6Ja1Q7I7cc_dM8/edit?usp=sharing)
for detailed guidance.

For connection to the CONECTnet L3VPN, please coordinate with the ACCESS
[[Networking & Data Transfer Services
Team]{.underline}](mailto:t3-ndts@access-ci.org). You may refer to L3VPN
integration documentation prepared by FIU as an example of the
integration process.

# Document Management

**Status**: Draft

**Official date**: \<mm/dd/yyyy\>

**Coordinators**: Kathy Benninger, ACCESS Operations

**Last revised date**: 2/15/2023

**Retired date**:
