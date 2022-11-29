-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/31784b66b7ff_Flags_1 

-- params : ...
-- function num : 0
if (pesecs[1]).VirtualSize > 851968 and (pesecs[1]).VirtualSize < 983040 and (pesecs[3]).VirtualSize > 1769472 and (pesecs[3]).VirtualSize < 2031616 then
  (mp.changedetectionname)(186)
  return mp.INFECTED
end
return mp.SUSPICIOUS

