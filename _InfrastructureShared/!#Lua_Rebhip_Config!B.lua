if not mp.get_mpattribute("SCPT:Rebhip_Config!B") then
  return mp.CLEAN
end
if mp.getfilesize() < 50000 or mp.getfilesize() > 500000 then
  return mp.CLEAN
end
if 67 ~= headerpage[1] and 99 ~= headerpage[1] then
  return mp.CLEAN
end
if 58 ~= headerpage[2] then
  return mp.CLEAN
end
if 92 ~= headerpage[3] then
  return mp.CLEAN
end
return mp.INFECTED
