if 3665532023 == mp.crc32(0, headerpage, 1, 3) then
  return mp.INFECTED
end
return mp.CLEAN
