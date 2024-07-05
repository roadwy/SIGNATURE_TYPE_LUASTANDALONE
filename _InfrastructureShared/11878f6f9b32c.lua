if mp.get_mpattribute("CMN:HSTR:InstallerFile") then
  return mp.CLEAN
end
if mp.getfilesize() > 2500000 or mp.getfilesize() < 4000 then
  return mp.CLEAN
end
return mp.INFECTED
