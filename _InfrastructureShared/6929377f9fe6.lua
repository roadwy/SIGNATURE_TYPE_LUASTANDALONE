if mp.getfilesize() > 255 then
  return mp.CLEAN
end
if string.lower(mp.getfilename()):find("%.eml%->%(part000%d:%)$") or string.lower(mp.getfilename()):find("%->%(ole stream %d%)%->%(msg%)%->%(rtfbody%)") then
  return mp.INFECTED
end
return mp.CLEAN
