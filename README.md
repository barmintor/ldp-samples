LDP-Samples
===========

This is some bash scripts and ntriples to illustrate the [LDP](https://www.w3.org/TR/ldp/) container interaction models against a Fedora 4 repository.

fcrepo.sh configures the repository and credentials.

create.sh creates:
1. a basic container at ./basic, with a resource at ./basic/resource
2. a direct container at ./basic/direct, with a resource at ./basic/direct/resource
3. an indirect container at ./basic/indirect, with a resource at ./basic/indirect/resource

The basic container at ./basic is the ldp:membershipResource for ./basic/direct and ./basic/indirect

The resources can be destroyed by running delete.sh