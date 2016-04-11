#/bin/bash
. fcrepo.sh

create() {
  container=`dirname $1`
  if [ $container = '.' ]; then
    container=""
  fi
  slug=`basename $1`
  ixn=$2
  if [ -z "$2" ]; then
    ixn="http://www.w3.org/ns/ldp#NonRDFSource"
  fi
  # ok, you have to have a rdf:type assertion for the specific container model, but...
  curl -X POST --user $FEDORA_USER:$FEDORA_PASSWORD -H "Slug: $slug" -H "Link: <$ixn>;rel=\"type\"" -H "Content-Type: text/turtle" --data-binary "@resources/$1.nt" $FEDORA_REPO/$container
  echo ""
}

create "basic" "http://www.w3.org/ns/ldp#Container"
create "basic/resource" "http://www.w3.org/ns/ldp#Container"
create "basic/direct" "http://www.w3.org/ns/ldp#Container"
create "basic/direct/resource" "http://www.w3.org/ns/ldp#Container"
create "basic/indirect" "http://www.w3.org/ns/ldp#Container"
create "basic/indirect/resource" "http://www.w3.org/ns/ldp#Container"
