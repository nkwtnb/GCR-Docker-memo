if [ $# -ne 4 ]; then
  cat << EOS
Please provide four arguments, including:
  \$1: region (ex: us-west1)
  \$2: project ID
  \$3: repository of Artifact Registry
  \$4: image
EOS
  exit 1
fi
docker build . -t $1-docker.pkg.dev/$2/$3/$4
docker push $1-docker.pkg.dev/$2/$3/$4
# TODO デプロイ用コマンド
