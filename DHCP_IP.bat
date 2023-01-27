@echo off

rem Set the interface name
set interface=Ethernet

rem Disable the interface
netsh interface set interface name="%interface%" admin=disable

rem Obtain IP address automatically
netsh interface ip set address name="%interface%" source=dhcp
netsh interface ip set dns name="%interface%" source=dhcp

rem Enable the interface
netsh interface set interface name="%interface%" admin=enable

echo Successfully changed IP address to DHCP.
