-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9d78e68f5efb_Flags_1 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:CarberpVncDLL") or (hstrlog[5]).matched then
  (mp.changedetectionname)(805306413)
  return mp.INFECTED
end
return mp.SUSPICIOUS

