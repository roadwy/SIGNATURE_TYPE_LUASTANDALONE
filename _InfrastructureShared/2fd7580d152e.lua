-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/2fd7580d152e 

-- params : ...
-- function num : 0
if (MpCommon.QueryPersistContextNoPath)("TaintedMachine", "TaintedMachineLow") then
  return mp.INFECTED
end
return mp.CLEAN

