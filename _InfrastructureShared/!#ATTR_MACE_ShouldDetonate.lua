if mp.get_mpattribute("MpContentDetected") and (mp.get_mpattributesubstring("Detection:Ransom:Win32/Conti") or mp.get_mpattributesubstring("Detection:Ransom:Win64/Conti") or mp.get_mpattributesubstring("Detection:Ransom:Win32/BlackMatter") or mp.get_mpattributesubstring("Detection:Ransom:Win64/BlackMatter")) then
  return mp.INFECTED
end
return mp.CLEAN
