runner_is_download=`echo "9e883d210df8c6028aff475475a457d380353f9d01877d51cc01a17b2a91161d  ./runners/actions-runner-linux-x64.tar.gz" | shasum -a 256 -c`

echo $runner_is_download

if [[ $runner_is_download == *"OK" ]]; then
    echo "runner is already download"
else
    echo "runner is not download, start download"
    curl -o runners/actions-runner-linux-x64.tar.gz -L "https://github.com/actions/runner/releases/download/v2.317.0/actions-runner-linux-x64-2.317.0.tar.gz"
fi