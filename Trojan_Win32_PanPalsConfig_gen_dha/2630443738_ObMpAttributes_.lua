if mp.HEADERPAGE_SZ < 528 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 1) == 0 or mp.readu_u32(headerpage, 525) == 0 then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 1) ~= mp.readu_u32(headerpage, 525) then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 521) > mp.getfilesize() or mp.readu_u32(headerpage, 525) > mp.getfilesize() then
  return mp.CLEAN
end
if mp.readu_u32(headerpage, 5) ~= 0 then
  return mp.CLEAN
end
if mp.bitxor(mp.readu_u32(headerpage, 513), 4227529208) ~= 0 then
  return mp.CLEAN
end
if mp.bitxor(mp.readu_u32(headerpage, 517), 4294901244) ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED
