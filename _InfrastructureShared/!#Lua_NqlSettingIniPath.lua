if mp.getfilesize() > 2000 then
  return mp.CLEAN
end
if mp.getfilename() == "C:\\Windows\\System32\\setting.ini" then
  return mp.INFECTED
end
return mp.CLEAN
