#!/bin/sh

build=false
clean=false
test=false
version=""
deploy=false
validate_deployment=false
deploy_env=""
upload_artifact=false
promote_artifact=false

while [[ ${1} ]]; do
	case "${1}" in
		--build)
			build=true
			shift
			;;
		--test)
			test=true
			shift
			;;
		--clean)
			clean=true
			shift
			;;
		--set-version)
			set_version=true
			version=${2}
			shift
			;;
		--deploy)
			deploy=true
			shift
			;;
		--validate-deployment)
			validate_deployment=true
			shift
			;;
		--deploy-environment)
			deploy_env=${2}
			shift
			;;
		--publish-snapshot)
			upload_artifact=true
			shift
			;;
		--publish-release)
			promote_artifact=true
			shift
			;;
		*)
			echo "Unknown parameter: ${1}" >&2
			exit 1
	esac

	#if ! shift; then
	#	echo "Missing parameter argument." >&2
	#	exit 1
	#fi
done

if $build; then
	echo "mvn `$clean && echo 'clean'` compile `$test && echo 'test'`"
fi

if $deploy; then
	echo "perform deployment"
fi

if $validate_deployment; then
	echo "validate deployment"
fi

if $upload_artifact; then
	echo "upload artifact"
fi
