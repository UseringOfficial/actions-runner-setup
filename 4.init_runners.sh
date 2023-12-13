cd runners

if [ $# -lt 1  ]; then
    echo "./init_runners.sh token runner_number"
    exit 1
fi

token=$1
defaultNumber=1
number=${2:-$defaultNumber}
hostname=$3

echo init $number runners with hostname $hostname

for no in `seq 1 $number`; do
    rm -rf runner-$no
    mkdir runner-$no
    tar -zxvf actions-runner-linux-x64.tar.gz -C runner-$no
    cp .env runner-$no
    cd runner-$no
    chmod a+x *.sh
    ./config.sh --unattended --url https://github.com/UseringOfficial --token $token --name $hostname-$no
    mkdir log
    cd ..
done

echo init $number runners done

cd ..
