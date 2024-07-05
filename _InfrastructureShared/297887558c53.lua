if not peattributes.isdll then
  return mp.CLEAN
end
if 32768 < mp.getfilesize() then
  return mp.CLEAN
end
return mp.INFECTED
