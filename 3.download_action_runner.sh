runner_is_download=`echo "fb28a1c3715e0a6c5051af0e6eeff9c255009e2eec6fb08bc2708277fbb49f93  ./runners/actions-runner-linux-x64-2.310.2.tar.gz" | shasum -a 256 -c`

echo $runner_is_download

if [[ $runner_is_download == *"OK" ]]; then
    echo "runner is already download"
else
    echo "runner is not download, start download"
    curl -o runners/actions-runner-linux-x64-2.310.2.tar.gz -L https://github.com/actions/runner/releases/download/v2.310.2/actions-runner-linux-x64-2.310.2.tar.gz
fi