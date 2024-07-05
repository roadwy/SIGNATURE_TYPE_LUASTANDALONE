if mp.getfilesize() <= 256 then
  mp.set_mpattribute("LUA:FileSizeLE100.A")
  return mp.CLEAN
end
if mp.getfilesize() <= 512 then
  mp.set_mpattribute("LUA:FileSizeLE200.A")
  return mp.CLEAN
end
if mp.getfilesize() <= 1024 then
  mp.set_mpattribute("LUA:FileSizeLE400.A")
  return mp.CLEAN
end
if mp.getfilesize() <= 2048 then
  mp.set_mpattribute("LUA:FileSizeLE800.A")
  return mp.CLEAN
end
if mp.getfilesize() <= 4096 then
  mp.set_mpattribute("LUA:FileSizeLE1000.A")
  return mp.CLEAN
else
  mp.set_mpattribute("LUA:FileSizeGE1000.A")
end
if mp.getfilesize() <= 8192 then
  mp.set_mpattribute("LUA:FileSizeLE2000.A")
  return mp.CLEAN
end
if mp.getfilesize() <= 20480 then
  mp.set_mpattribute("LUA:FileSizeLE5000.A")
  return mp.CLEAN
else
  mp.set_mpattribute("LUA:FileSizeGT5000.A")
end
if mp.getfilesize() <= 65536 then
  mp.set_mpattribute("LUA:FileSizeLE10000.A")
  return mp.CLEAN
end
if mp.getfilesize() > 131072 then
  mp.set_mpattribute("LUA:FileSizeGT20000.A")
else
  mp.set_mpattribute("LUA:FileSizeLE20000.A")
  return mp.CLEAN
end
if mp.getfilesize() > 262144 then
  mp.set_mpattribute("LUA:FileSizeGT40000.A")
else
  mp.set_mpattribute("LUA:FileSizeLE40000.A")
  return mp.CLEAN
end
if mp.getfilesize() > 524288 then
  mp.set_mpattribute("LUA:FileSizeGT80000.A")
else
  mp.set_mpattribute("LUA:FileSizeLE80000.A")
  return mp.CLEAN
end
if mp.getfilesize() > 1048576 then
  mp.set_mpattribute("LUA:FileSizeGT1M.A")
else
  mp.set_mpattribute("LUA:FileSizeLE1M.A")
  return mp.CLEAN
end
if mp.getfilesize() > 2097152 then
  mp.set_mpattribute("LUA:FileSizeGT2M.A")
end
if mp.getfilesize() > 4194304 then
  mp.set_mpattribute("LUA:FileSizeGT4M.A")
end
if mp.getfilesize() > 8388608 then
  mp.set_mpattribute("LUA:FileSizeGT8M.A")
end
if mp.getfilesize() > 10485760 then
  mp.set_mpattribute("LUA:FileSizeGT10M.A")
end
if mp.getfilesize() > 12582912 then
  mp.set_mpattribute("LUA:FileSizeGT12M.A")
end
if mp.getfilesize() > 33554432 then
  mp.set_mpattribute("LUA:FileSizeGT20M.A")
end
if mp.getfilesize() > 67108864 then
  mp.set_mpattribute("LUA:FileSizeGT40M.A")
end
if mp.getfilesize() > 268435456 then
  mp.set_mpattribute("LUA:FileSizeGT100M.A")
end
if mp.getfilesize() > 268435456 then
  mp.set_mpattribute("LUA:FileSizeGT256M.A")
end
if mp.getfilesize() > 300000000 then
  mp.set_mpattribute("LUA:FileSizeGT300M.A")
end
if mp.getfilesize() > 500000000 then
  mp.set_mpattribute("LUA:FileSizeGT500M.A")
end
if mp.getfilesize() > 1000000000 then
  mp.set_mpattribute("LUA:FileSizeGT1G.A")
end
if mp.getfilesize() >= 50000 then
  mp.set_mpattribute("Lua:FileSizeGEC350")
end
return mp.CLEAN
