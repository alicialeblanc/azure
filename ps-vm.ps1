#variables
$vm = 1
$rg = test
$user = admin
$pass = Testing12345
$size = Standard_B2s

#make the vm

az vm create -n $vm -g $rg --image WinDataCenter2016 --admin-username $user --admin-password $pw --size $size 

#enable remoting

Enable-AzVMPSRemoting -Name $vm -ResourceGroupName $rg -Credential $cred

Write-Host "vm created and remoting available"