#variable
param([String]$VMName)

#make the vm (figure out custom data)

az vm create -n $VMName -g test --image Win2016DataCenter --admin-username admina --admin-password Testing12345 --size Standard_B2s

#enable remoting

Enable-AzVMPSRemoting -Name $VMName -ResourceGroupName test -Protocol https -OsType Windows

Write-Host "vm created and remoting available"