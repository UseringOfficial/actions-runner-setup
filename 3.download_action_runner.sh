runner_is_download=`echo "29fc8cf2dab4c195bb147384e7e2c94cfd4d4022c793b346a6175435265aa278  ./runners/actions-runner-linux-x64-2.311.0.tar.gz" | shasum -a 256 -c`

echo $runner_is_download

if [[ $runner_is_download == *"OK" ]]; then
    echo "runner is already download"
else
    echo "runner is not download, start download"
    curl -o runners/actions-runner-linux-x64.tar.gz -L "https://github.com/actions/runner/releases/download/v2.311.0/actions-runner-linux-x64-2.311.0.tar.gz"
fi