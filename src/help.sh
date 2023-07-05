show_help() {
     case $1 in
     api | x25519 | tls | run | uuid | version)
         $is_core_bin help $1 ${@:2}
         ;;
     *)
         [[ $1 ]] && warn "Unknown option '$1'"
         msg "$is_core_name script $is_sh_ver by $author"
         msg "Usage: $is_core [options]... [args]... "
         msg
         help_info=(
             "Basic:"
             " v, version show current version"
             " ip returns the IP of the current host"
             " pbk is equivalent to $is_core x25519"
             " get-port returns an available port"
             " ss2022 returns a password that can be used with Shadowsocks 2022\n"
             "General:"
             " a, add [protocol] [args... | auto] add configuration"
             " c, change [name] [option] [args... | auto] change configuration"
             " d, del [name] delete configuration**"
             " i, info [name] view configuration"
             " qr [name] QR code information"
             " url [name] URL information"
             "log view log"
             " logerr view error log\n"
             "Change:"
             " dp, dynamicport [name] [start | auto] [end] change dynamic port"
             " full [name] [...] changes multiple parameters"
             " id [name] [uuid | auto] Change UUID"
             " host [name] [domain] change domain name"
             " port [name] [port | auto] change port"
             " path [name] [path | auto] change path"
             " passwd [name] [password | auto] change password"
             " key [name] [Private key | atuo] [Public key] change key"
             " type [name] [type | auto] Change masquerade type"
             " method [name] [method | auto] change the encryption method"
             " sni [name] [ip | domain] change serverName"
             " seed [name] [seed | auto] Change mKCP seed"
             " new [name] [...] changes the protocol"
             " web [name] [domain] change masquerading website\n"
             "Advanced:"
             "dd, ddel [name...] delete multiple configurations**"
             " fix [name] fixes a configuration"
             " fix-all fix all configurations"
             " fix-config.json fixes config.json\n"
             "Management:"
             "un, uninstall Uninstall"
             " u, update [core | sh | caddy] [ver] update"
             " U, update.sh update script"
             " s, status running status"
             " start, stop, restart [caddy] start, stop, restart"
             "t, test test run"
             " reinstall reinstall script\n"
             "Testing:"
             " client, genc [name] show JSON for client, for reference only"
             "debug [name] show some debug information, just for reference"
             " gen [...] is equivalent to add, but only displays JSON content, does not create files, test use"
             " no-auto-tls [...] is equivalent to add, but disables auto-configuration of TLS, available for *TLS-related protocols"
             "xapi [...] is equivalent to $is_core api, but the API backend uses the currently running $is_core_name service\n"
             "other:"
             " bbr enable BBR, if supported"
             " bin [...] run the $is_core_name command, eg: $is_core bin help"
             " api, x25519, tls, run, uuid [...] Compatible with $is_core_name command"
             " h, help show this help page\n"
         )
         for v in "${help_info[@]}"; do
             msg "$v"
         done
         msg "Use del, ddel with caution, this option will delete the configuration directly; no confirmation required"
         msg "Original Feedback issues) $(msg_ul https://github.com/${is_sh_repo}/issues)"
         msg "Original Document (doc) $(msg_ul https://233boy.com/$is_core/$is_core-script/)"
         ;;

     esac
}

about() {
     unset c n m s b
     msg
     msg "Website: $(msg_ul https://233boy.com)"
     msg "Channel: $(msg_ul https://t.me/tg2333)"
     msg "Group: $(msg_ul https://t.me/tg233boy)"
     msg "Github: $(msg_ul https://github.com/${is_sh_repo})"
     msg "Twitter: $(msg_ul https://twitter.com/ai233boy)"
     msg "$is_core_name site: $(msg_ul https://xtls.github.io)"
     msg "$is_core_name core: $(msg_ul https://github.com/${is_core_repo})"
     msg "Translated by sherlockmac: $(msg_ul https://github.com/sherlockmac)"
     msg
}
