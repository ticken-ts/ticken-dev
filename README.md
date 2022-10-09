# ticken-dev

## Common errors

#### Running local PVTBC
* `scripts/ccutils.sh: line 25: jq: command not found`

This error is caused by missing the jq dependency. `jq` is a shell 
command that allows you to parse jsons if you are in mac execute the following command:

    brew install jq

