if mp.get_mpattribute("NID:Win32/Racealer.P1") or mp.get_mpattribute("NID:Win32/Racealer.P2") and mp.getfilesize() >= 200000 and mp.getfilesize() <= 1200000 then
  return mp.INFECTED
end
return mp.CLEAN
