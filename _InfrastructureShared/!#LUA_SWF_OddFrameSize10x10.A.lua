if headerpage[1] ~= 70 or headerpage[2] ~= 87 or headerpage[3] ~= 83 then
  return mp.CLEAN
end
if headerpage[9] == 72 and headerpage[10] == 1 and headerpage[11] == 144 and headerpage[12] == 0 and headerpage[13] == 100 and headerpage[14] == 0 then
  mp.set_mpattribute("Lua:SWF/OddFrameSize10x10.A")
end
if mp.bitand(headerpage[9], 248) == 48 and mp.bitor(mp.shl8(mp.bitand(headerpage[10], 31), 1), mp.shr8(headerpage[11], 7)) < 40 and mp.bitor(mp.shl8(mp.bitand(headerpage[11], 1), 5), mp.shr8(headerpage[12], 3)) < 40 and (0 < mp.bitor(mp.shl8(mp.bitand(headerpage[9], 7), 3), mp.shr8(headerpage[10], 5)) or 0 < mp.shr8(mp.bitand(headerpage[11], 126), 1)) then
  mp.set_mpattribute("SCPT:SWF/OddFrameSize1x1.B")
end
return mp.CLEAN
