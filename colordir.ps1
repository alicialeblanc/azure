if ($args.count -ne 1)
{
    Write-Host "Missing Parameter!" -foregroundcolor "Red"
    Exit
}

$folderpath = $args[0]

Write-Host ("Directory listing of" + $folderpath)

# PROCESS EACH ITEM IN THE DIRECTORY 

foreach ($i in get-childitem $folderpath) 
{
       if ($i.mode.substring(0,1) -eq "d")
       {
           Write-Host $i.name -foregroundcolor "Blue"
       } 
       
       else 
       {
            Write-Host $i.name -foregroundcolor "Green"    
       }
}