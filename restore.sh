pushd ./data
sudo mkdir -p /var/lib/microsoft-identity-device-broker/
sudo cp ./1000.db /var/lib/microsoft-identity-device-broker/1000.db
sudo cp ./machine-id /etc/machine-id
sudo cp ./os-release /etc/os-release
cp ./account-data.db ~/.config/microsoft-identity-broker/account-data.db
cp ./broker-data.db ~/.config/microsoft-identity-broker/broker-data.db
cp ./cookies.db ~/.config/microsoft-identity-broker/cookies.db
cp ./login.keyring ~/.local/share/keyrings/login.keyring
popd
