#!/usr/bin/env bash
dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
. ""${dir}"/../libraries/zemni/execution/microservice/spring/lib_spring.sh"

run -f $1 -c $2 -t $3