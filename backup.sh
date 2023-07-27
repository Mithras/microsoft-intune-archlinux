pushd ./data
sudo cp /var/lib/microsoft-identity-device-broker/1000.db .
sudo cp /etc/machine-id .
sudo cp /etc/os-release .
cp ~/.config/microsoft-identity-broker/account-data.db .
cp ~/.config/microsoft-identity-broker/broker-data.db .
cp ~/.config/microsoft-identity-broker/cookies.db .
cp ~/.local/share/keyrings/login.keyring .
popd
