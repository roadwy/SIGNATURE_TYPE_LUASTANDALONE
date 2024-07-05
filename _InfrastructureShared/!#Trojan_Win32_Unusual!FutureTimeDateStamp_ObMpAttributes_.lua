if peattributes.isexe == false then
  return mp.CLEAN
end
if peattributes.isdriver == true then
  return mp.CLEAN
end
if peattributes.no_security == false then
  return mp.CLEAN
end
if peattributes.packed == true then
  return mp.CLEAN
end
if peattributes.packersigmatched == true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if peattributes.epinfirstsect == true then
  return mp.CLEAN
end
if peattributes.suspicious_timestamp == false then
  return mp.CLEAN
end
if peattributes.no_debug == false then
  return mp.CLEAN
end
if pehdr.TimeDateStamp == 0 or pehdr.TimeDateStamp == -1 then
  return mp.CLEAN
end
if not string.find(string.lower(mp.getfilename()), ".exe$") then
  return mp.CLEAN
end
if mp.getfilesize() < 4096 or mp.getfilesize() > 16777216 then
  return mp.CLEAN
end
if MpCommon.GetCurrentTimeT() == nil or MpCommon.GetCurrentTimeT() == 0 or MpCommon.GetCurrentTimeT() == -1 then
  return mp.CLEAN
end
if pehdr.TimeDateStamp > MpCommon.GetCurrentTimeT() + 2621440 then
  return mp.LOWFI
end
return mp.CLEAN
