#!/bin/bash
clear

# variables
$vmName = "VirtualMachine"
$vmMemory = 512

# create vm
VBoxManage createvm --name $vmName --register

# modify vm
VBoxManage modifyvm $vmName --memory $vmMemory --acpi on --boot1 dvd
#VBoxManage modifyvm "io" --nic1 bridged --bridgeadapter1 eth0
#VBoxManage modifyvm "io" --macaddress1 XXXXXXXXXXXX
#VBoxManage modifyvm "io" --ostype Debian
