runner_is_download=`echo "b13b784808359f31bc79b08a191f5f83757852957dd8fe3dbfcc38202ccf5768  ./runners/aactions-runner-linux-x64.tar.gz" | shasum -a 256 -c`

echo $runner_is_download

if [[ $runner_is_download == *"OK" ]]; then
    echo "runner is already download"
else
    echo "runner is not download, start download"
    curl -o ./runners/actions-runner-linux-x64.tar.gz -L https://github.com/actions/runner/releases/download/v2.322.0/actions-runner-linux-x64-2.322.0.tar.gz
fi