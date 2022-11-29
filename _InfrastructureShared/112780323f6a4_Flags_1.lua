-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/112780323f6a4_Flags_1 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:CarberpVncDLL") or (hstrlog[5]).matched then
  (mp.changedetectionname)(805306440)
  return mp.INFECTED
end
return mp.SUSPICIOUS

