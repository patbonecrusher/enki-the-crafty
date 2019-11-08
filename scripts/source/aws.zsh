# pip install awscli
# aws configure

export AWS_PROFILE=default
alias aws-d3='export AWS_PROFILE=d3'
alias aws-perso='export AWS_PROFILE=patperso'
alias aws-pharos='export AWS_PROFILE=default'

function create_longlasting_link {
	TTL=$1
	BUCKET=$2
	OBJECT=$3

	aws s3 presign s3://${BUCKET}/${OBJECT} --expires-in ${TTL}
}

