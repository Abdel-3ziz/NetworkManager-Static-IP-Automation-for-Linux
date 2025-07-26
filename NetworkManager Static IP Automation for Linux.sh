#!/bin/bash

#variables 
INTERFACE="eth0"
STATIC_IP="192.168.1.70"
CIDR=24
GATEWAY=192.168.1.1
DNS1="8.8.8.8"
#function to set static iP
configure_static_ip(){
        echo "configrution static ip..."
        sudo nmcli conn add type ethernet autoconnect yes con-name $INTERFACE ifname $INTERFACE
        sudo nmcli conn mod "$INTERFACE" ipv4.addresses "$STATIC_IP/$CIDR"
        sudo nmcli conn mod "$INTERFACE" ipv4.gateway $GATEWAY
        sudo nmcli conn mod "$INTERFACE" ipv4.dns $DNS1
        sudo nmcli conn mod "$INTERFACE" ipv4.method manual
        echo "static ip configuration done"
}

#function to restart the network service
restart_function(){
        echo "restarting network service.."
        sudo nmcli conn up "$INTERFACE"
        echo "network service restarted"
}

#function to display current network configration
show_network_config(){
        echo "current network config"
        ip addr show "$INTERFACE"
}

#function to automate the whole network confiration 
automate_network_config(){
        configure_static_ip
        restart_function
        show_network_config
}

#execute the automation function
automate_network_config
