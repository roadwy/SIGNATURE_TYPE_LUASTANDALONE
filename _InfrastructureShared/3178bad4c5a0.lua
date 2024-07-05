if mp.getfilesize() <= 2097152 then
  return mp.INFECTED
end
mp.set_mpattribute("ALF:Trojan:Win32/GenMal.A")
return mp.CLEAN
