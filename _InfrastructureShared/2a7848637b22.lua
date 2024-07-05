if peattributes.isexe == true then
  if not mp.get_mpattribute("NID:Trojan:Win32/Fragtor.AD!MTB") then
  end
  return mp.INFECTED
end
return mp.CLEAN
