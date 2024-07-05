if mp.readu_u32(epcode, 37) ~= 232 then
  return mp.CLEAN
end
if epcode[36] ~= 96 then
  return mp.CLEAN
end
if mp.readu_u32(epcode, 41) ~= 2180287232 then
  return mp.CLEAN
end
if epcode[77] ~= 232 then
  return mp.CLEAN
end
if epcode[82] ~= 195 then
  return mp.CLEAN
end
if mp.readu_u32(epcode, 57) ~= 2240800907 then
  return mp.CLEAN
end
if mp.readu_u16(epcode, 65) ~= 46591 then
  return mp.CLEAN
end
if mp.readu_u16(epcode, 71) ~= 34191 then
  return mp.CLEAN
end
if mp.bitand(epcode[1], 184) ~= 184 then
  return mp.CLEAN
end
if mp.bitand(epcode[6], 184) ~= 184 then
  return mp.CLEAN
end
if mp.bitand(epcode[11], 184) ~= 184 then
  return mp.CLEAN
end
if mp.bitand(epcode[16], 184) ~= 184 then
  return mp.CLEAN
end
if mp.bitand(epcode[21], 184) ~= 184 then
  return mp.CLEAN
end
if mp.bitand(epcode[26], 184) ~= 184 then
  return mp.CLEAN
end
return mp.INFECTED
