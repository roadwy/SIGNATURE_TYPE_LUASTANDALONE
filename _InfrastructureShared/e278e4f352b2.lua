if mp.get_mpattribute("ALF:HSTR:Trojan:Win32/FauppodPDB.S010") then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:Trojan:Win32/Fauppod.SA")
return mp.LOWFI
