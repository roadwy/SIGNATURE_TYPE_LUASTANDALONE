if mp.getfilesize() <= 300 or mp.getfilesize() > 400000 then
  return mp.CLEAN
end
if string.lower(mp.getfilename()) == nil or string.lower(mp.getfilename()):match("%->.+/") or string.lower(mp.getfilename()):match("%->.-\\") then
  return mp.CLEAN
end
return mp.INFECTED
