##
#Username="Administrator"
#Passwd="IfYouAreNotPushingYourLimites"

$group=$computer.psbase.children.find("administrators")

function AddToGroup($number)
{
     $group.add("WinNT://"+$domain+"/"+$number )
}

 AddToGroup ""
