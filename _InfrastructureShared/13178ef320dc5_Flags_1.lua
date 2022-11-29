-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/13178ef320dc5_Flags_1 

-- params : ...
-- function num : 0
if (hstrlog[5]).matched or (hstrlog[6]).matched then
  (mp.changedetectionname)(805306407)
  return mp.INFECTED
end
return mp.INFECTED

