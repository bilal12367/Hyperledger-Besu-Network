mkdir hyperledger-besu
cd hyperledger-besu
if test -f besu-23.4.0.zip 
then
    echo "File Exists"
else 
    wget https://hyperledger.jfrog.io/hyperledger/besu-binaries/besu/23.4.0/besu-23.4.0.zip
fi
rm -rf besu
unzip besu-23.4.0.zip
mv besu-23.4.0 besu
cd besu/bin
export PATH=$PATH:$(pwd)

echo "Besu Installed"