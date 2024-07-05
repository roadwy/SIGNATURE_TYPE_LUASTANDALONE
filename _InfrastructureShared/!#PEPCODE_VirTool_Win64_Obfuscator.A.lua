if pehdr.Machine ~= 34404 then
  return mp.CLEAN
end
if pehdr.DataDirectory[2].Size ~= 40 then
  return mp.CLEAN
end
if mp.readu_u32(epcode, 1) ~= 686588744 then
  return mp.CLEAN
end
if epcode[5] ~= 232 then
  return mp.CLEAN
end
if mp.readu_u32(epcode, 9) ~= 3296937984 then
  return mp.CLEAN
end
if mp.readu_u16(epcode, 13) ~= 49960 then
  return mp.CLEAN
end
return mp.INFECTED
