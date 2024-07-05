if peattributes.isdll then
  return mp.CLEAN
end
if not peattributes.isvbnative and not peattributes.isvbpcode then
  return mp.CLEAN
end
if mp.getfilesize() > 2097152 then
  return mp.CLEAN
end
return mp.INFECTED
