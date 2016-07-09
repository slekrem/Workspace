#!/bin/bash
#clear

# variables
vmName="VirtualMachine"
vmMemory=512
vmAacaddress1=BCAF4EE72171
vmOstype=Ubuntu

# create vm
VBoxManage createvm --name $vmName --register

# modify vm
VBoxManage modifyvm $vmName --memory $vmMemory --acpi on --boot1 dvd
VBoxManage modifyvm $vmName --nic1 bridged --bridgeadapter1 eth0
VBoxManage modifyvm $vmName --macaddress1 $vmMacAddress1
VBoxManage modifyvm "io" --ostype Debian



echo asd
VBoxManage unregistervm $vmName --delete
