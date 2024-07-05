if mp.getfilesize() >= 290816 and mp.getfilesize() <= 299008 and mp.get_mpattribute("ALF:Trojan:Win32/IcedId.PJ!MTB") then
  return mp.INFECTED
end
return mp.CLEAN
