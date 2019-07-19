#variables
param([String]$VMName, [String]$RGName)

#make the vm (figure out custom data), add flow control

az vm create -n $VMName -g $RGName --image Win2016DataCenter --admin-username admina --admin-password $RGNameing12345 --size Standard_B2s

#enable remoting

Enable-AzVMPSRemoting -Name $VMName -ResourceGroupName $RGName -Protocol https -OsType Windows

Write-Host "vm created and remoting available"