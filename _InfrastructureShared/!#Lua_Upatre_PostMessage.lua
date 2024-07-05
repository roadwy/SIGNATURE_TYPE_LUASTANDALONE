if peattributes.isdll then
  return mp.CLEAN
end
if mp.getfilesize() < 17920 or mp.getfilesize() > 70656 then
  return mp.CLEAN
end
if mp.get_mpattribute("SIGATTR:PostMessage!Unusual") or mp.get_mpattribute("SIGATTR:SendMessage!Unusual") then
  return mp.INFECTED
end
return mp.CLEAN
