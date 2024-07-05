if mp.crc32(-1, epcode, 1, 16) == 3504257948 then
  return mp.INFECTED
end
return mp.CLEAN
