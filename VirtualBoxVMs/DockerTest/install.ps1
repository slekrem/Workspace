# Tutorial: http://nakkaya.com/2012/08/30/create-manage-virtualBox-vms-from-the-command-line/

# Variables
$isoImageUri="http://releases.ubuntu.com/15.10/ubuntu-15.10-server-i386.iso"
$isoImage="ubuntu-15.10-server-i386.iso"
$vmName = "DockerTest"

# Create bin
if(-not (Test-Path ./bin)) {
    mkdir bin
}

# Download image
if(-not (Test-Path ./bin/$isoImage)) {
    $start_time = Get-Date
    Invoke-WebRequest -Uri $isoUrl -OutFile $isoImage
    Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
}

# Create the VM.
VBoxManage createvm --name $vmName --register
VBoxManage modifyvm $vmName --memory 512 --acpi on --boot1 dvd
##VBoxManage modifyvm "io" --nic1 bridged --bridgeadapter1 eth0
##VBoxManage modifyvm "io" --macaddress1 XXXXXXXXXXXX
VBoxManage modifyvm $vmName --ostype Ubuntu_64

# Attach storage, add an IDE controller with a CD/DVD drive attached, and the install ISO inserted into the drive.
VBoxManage createhd --filename ./bin/$vmName".vdi" --size 10000
VBoxManage storagectl $vmName --name "IDE Controller" --add ide

VBoxManage storageattach $vmName --storagectl "IDE Controller" --port 0 --device 0 --type hdd --medium ./bin/$vmName".vdi"
VBoxManage storageattach $vmName --storagectl "IDE Controller" --port 1 --device 0 --type dvddrive --medium ./bin/$isoImage

# Starting the VM for installation
VBoxHeadless --startvm $vmName