#/bin/bash
. fcrepo.sh

destroy() {
  curl -X DELETE --user $FEDORA_USER:$FEDORA_PASSWORD $FEDORA_REPO/$1
  curl -X DELETE --user $FEDORA_USER:$FEDORA_PASSWORD $FEDORA_REPO/$1/fcr:tombstone
  # curl -X DELETE --user $FEDORA_USER:$FEDORA_PASSWORD $FEDORA_REPO/$1/fcr:metadata
}

destroy "basic/resource"
destroy "basic/indirect/resource"
destroy "basic/indirect"
destroy "basic/direct/resource"
destroy "basic/direct"
destroy "basic"