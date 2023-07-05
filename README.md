# Introduction

The best Xray one-click installation script & management script

# Features

- quick installation
- Invincible and easy to use
- Zero learning cost
- Automated TLS
- Simplify all processes
- Block BT
- Block Chinese IP
- Use API operations
- Compatible with Xray commands
- Powerful shortcut parameters
- Supports all common protocols
- Add Shadowsocks 2022 with one click
- Add VMess-(TCP/mKCP/QUIC) with one click
- Add VMess-(WS/H2/gRPC)-TLS with one click
- Add VLESS-(WS/H2/gRPC)-TLS with one click
- Add Trojan-(WS/H2/gRPC)-TLS with one click
- Add VLESS-XTLS-uTLS-REALITY with one click
- Add VMess-(TCP/mKCP/QUIC) dynamic ports with one click
- Enable BBR with one click
- Change the fake website with one click
- One-click change (port/UUID/password/domain name/path/encryption method/SNI/dynamic port/etc...)
- there are more...

# Design concept

The design concept is: **high efficiency, super fast, extremely easy to use**

The script is based on the author's own needs, with **Multiple configurations running at the same time** as the core design

And specially optimized, add, change, view, delete, these four commonly used functions

You only need one command to add, change, view, delete, etc.

For example, adding a configuration takes less than 1 second! The addition is done in an instant! The same goes for other operations!

The parameters of the script are very efficient and super easy to use, please master the use of parameters

# Help

Use: `xray help`

```
Xray script v1.0 by 233boy
Usage: xray [options]... [args]...

Basic:
    v, version show current version
    ip returns the IP of the current host
    pbk is equivalent to xray x25519
    get-port returns an available port
    ss2022 returns a cipher that can be used with Shadowsocks 2022

generally:
    a, add [protocol] [args... | auto] add configuration
    c, change [name] [option] [args... | auto] change configuration
    d, del [name] delete configuration**
    i, info [name] view configuration
    qr [name] QR code information
    url [name] URL information
    log view log
    logerr view error log

Change:
    dp, dynamicport [name] [start | auto] [end] change dynamic port
    full [name] [...] Change multiple parameters
    id [name] [uuid | auto] Change UUID
    host [name] [domain] change domain name
    port [name] [port | auto] change port
    path [name] [path | auto] change path
    passwd [name] [password | auto] change password
    key [name] [Private key | atuo] [Public key] change key
    type [name] [type | auto] Change masquerade type
    method [name] [method | auto] Change the encryption method
    sni [name] [ip | domain] change serverName
    seed [name] [seed | auto] Change mKCP seed
    new [name] [...] Change protocol
    web [name] [domain] Change masquerade website

Advanced:
    dd, ddel [name...] delete multiple configurations**
    fix [name] fix a configuration
    fix-all fix all configuration
    fix-config.json fixes config.json

manage:
    un, uninstall Uninstall
    u, update [core | sh | caddy] [ver] update
    U, update.sh update script
    s, status running status
    start, stop, restart [caddy] start, stop, restart
    t, test test run
    reinstall reinstallation script

test:
    client, genc [name] show JSON for client, for reference only
    debug [name] show some debug information, just for reference
    gen [...] is equivalent to add, but only displays JSON content, does not create files, test use
    no-auto-tls [...] is equivalent to add, but disables automatic configuration of TLS, can be used for *TLS related protocols
    xapi [...] is equivalent to xray api, but the API backend uses the currently running Xray service

other:
    bbr enable BBR, if supported
    bin [...] Run Xray commands, eg: xray bin help
    api, x25519, tls, run, uuid [...] compatible with Xray commands
    h, help display this help interface

Use del, ddel with caution, this option will delete the configuration directly; no confirmation required
Original Feedback issues) https://github.com/233boy/xray/issues
Original Documentation (doc) https://233boy.com/xray/xray-script/
```
