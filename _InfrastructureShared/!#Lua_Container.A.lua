if mp.getfilesize() <= 300 or mp.getfilesize() > 600000 then
  return mp.CLEAN
end
if string.lower(mp.getfilename()) ~= nil and (string.lower(mp.getfilename()):match("%->.+/") or string.lower(mp.getfilename()):match("%->.+\\") or string.lower(mp.getfilename()):match("%->.+%->")) then
  return mp.INFECTED
end
return mp.CLEAN
