-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/10a787856205d 

-- params : ...
-- function num : 0
if mp.HSTR_CALLER_SMS == (mp.GetHSTRCallerId)() then
  return mp.INFECTED
end
return mp.CLEAN

