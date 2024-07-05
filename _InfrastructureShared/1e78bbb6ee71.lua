if mp.getfilesize() >= 86016 and mp.getfilesize() <= 131072 and pehdr.NumberOfSections == 7 and mp.get_mpattribute("NID:TrojanSpy:Win32/Guildma.AB") then
  return mp.INFECTED
end
return mp.CLEAN
