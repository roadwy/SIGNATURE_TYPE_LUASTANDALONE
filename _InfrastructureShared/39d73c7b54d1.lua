-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/39d73c7b54d1 

-- params : ...
-- function num : 0
if (MpCommon.GetPersistContextCountNoPath)("TaintedMachineML_Low") > 0 then
  return mp.INFECTED
end
return mp.CLEAN

