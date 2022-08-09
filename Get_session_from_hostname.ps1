# this script take hostname or IP adresses in the list Computers and try to get the user assiociated with the computer.
# the script won't show any errors even if it can't find the target.
# this script run without argument
# this script returns computer name associated with the session logged in this computer or return just th computer name when no session is logged in

$Computers ='Computer name','IP'
"------------------------------------------------------------------"


foreach ($i in $Computers){

    "hostname : " + $i
    try{
        $loginfo = Get-WmiObject -Computer $i -Class Win32_ComputerSystem -ErrorAction SilentlyContinue
        "Machine Name:" + $loginfo.Name
        "User Name:" + $loginfo.UserName
    }
    catch {
        "Machine Name:" + $loginfo.Name
    }
    "`n"
}
