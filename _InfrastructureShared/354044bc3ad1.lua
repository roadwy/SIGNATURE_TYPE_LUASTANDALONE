mp.set_mpattribute("PUA:Block:Bayads")
if mp.get_mpattribute("//HSTR:Win32/Bayads!Exc") then
  return mp.CLEAN
end
return mp.INFECTED
