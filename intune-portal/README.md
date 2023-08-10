Doesn't work:

```
2023-08-10 11:38:37  INFO Command line arguments args=PortalArgs { common: CommonArgs { interactive: false, socket_path: "/run/intune/daemon.socket" } } version="1.2305.20"
(intune-portal:2882): Gtk-WARNING **: 11:38:37.886: Duplicate child name in GtkStack: page2
2023-08-10 11:38:39  INFO Starting a new login
2023-08-10 11:40:02 ERROR oneauth{tag="581h6"}: (Code:1001) An unexpected error occurred.
2023-08-10 11:40:02 ERROR oneauth{tag="9vdpp"}: Unexpected error code: 1001
2023-08-10 11:40:02 ERROR oneauth{tag="69x1u"}: UI web navigation failed
terminate called after throwing an instance of 'std::runtime_error'
  what():  locale::facet::_S_create_c_locale name not valid
Aborted (core dumped)
```

```
2023-08-10 11:40:29  INFO Command line arguments args=PortalArgs { common: CommonArgs { interactive: false, socket_path: "/run/intune/daemon.socket" } } version="1.2305.20"
(intune-portal:3372): Gtk-WARNING **: 11:40:29.905: Duplicate child name in GtkStack: page2
2023-08-10 11:40:31  INFO Starting a new login
2023-08-10 11:41:00  INFO Login succeeded reg.account_hint=d30027d4-8fd1-4f86-93a8-daa35b66c8e8
2023-08-10 11:41:00  INFO Requesting a token silently resource=ResourceId("00000003-0000-0000-c000-000000000000")
2023-08-10 11:41:02  INFO Enabling OneAuth telemetry collector_url=Url { scheme: "https", cannot_be_a_base: false, username: "", password: None, host: Some(Domain("self.events.data.microsoft.com")), port: None, path: "/OneCollector/1.0/", query: None, fragment: None }
2023-08-10 11:41:02  INFO get_client{capability="BrandingService" resource=ResourceId("b8066b99-6e67-41be-abfa-75db1a2c8809") endpoint="https://fef.bmsua01.manage-beta.microsoft.com/TrafficGateway/TrafficRoutingService/Wcs/StatelessBrandingService/" endpoint="https://fef.bmsua01.manage-beta.microsoft.com/TrafficGateway/TrafficRoutingService/Wcs/StatelessBrandingService/"}: Requesting a token silently resource=ResourceId("b8066b99-6e67-41be-abfa-75db1a2c8809")
2023-08-10 11:41:03  WARN get_client{capability="BrandingService" resource=ResourceId("b8066b99-6e67-41be-abfa-75db1a2c8809") endpoint="https://fef.bmsua01.manage-beta.microsoft.com/TrafficGateway/TrafficRoutingService/Wcs/StatelessBrandingService/" endpoint="https://fef.bmsua01.manage-beta.microsoft.com/TrafficGateway/TrafficRoutingService/Wcs/StatelessBrandingService/"}: registered aad device id has changed! The new device id has to be checked for repatching in the LinuxMDM Service
2023-08-10 11:41:03  INFO get_brands: Fetching default branding and customization information
2023-08-10 11:41:03  INFO get_client{capability="IWService" resource=ResourceId("b8066b99-6e67-41be-abfa-75db1a2c8809") endpoint="https://fef.bmsua01.manage-beta.microsoft.com/TrafficGateway/TrafficRoutingService/IWService/StatelessIWService/" endpoint="https://fef.bmsua01.manage-beta.microsoft.com/TrafficGateway/TrafficRoutingService/IWService/StatelessIWService/"}: Requesting a token silently resource=ResourceId("b8066b99-6e67-41be-abfa-75db1a2c8809")
2023-08-10 11:41:04 ERROR Error calling IWS for Terms of Use: Unexpected failure: Bad Request
```

```sh
systemctl status intune-daemon.service
systemctl status intune-daemon.socket
systemctl status intune-agent.service --user
systemctl status intune-agent.timer --user
```

```sh
sudo ls /var/lib/microsoft-identity-device-broker/
ls ~/.config/microsoft-identity-broker/
ls ~/.local/share/keyrings/
```
