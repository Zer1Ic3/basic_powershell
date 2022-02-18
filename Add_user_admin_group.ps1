##
#Username="Administrator"
#Passwd="IfYouAreNot1"

$group=$computer.psbase.children.find("administrators")

function AddToGroup($number)
{
     $group.add("WinNT://"+$domain+"/"+$number )
}

 AddToGroup ""
