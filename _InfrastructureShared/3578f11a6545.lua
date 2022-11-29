-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/3578f11a6545 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (hstrlog[4]).hitcount >= 50 then
  return mp.INFECTED
end
return mp.CLEAN

