-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#Lua_FlashPlayerHTA 

-- params : ...
-- function num : 0
if (string.len)((mp.getfilename)()) < 15 then
  return mp.CLEAN
end
if (string.lower)((string.sub)((mp.getfilename)(), -15)) == "flashplayer.hta" then
  return mp.INFECTED
end
return mp.CLEAN

