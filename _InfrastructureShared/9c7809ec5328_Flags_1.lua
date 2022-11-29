-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9c7809ec5328_Flags_1 

-- params : ...
-- function num : 0
if peattributes.reads_vdll_code and peattributes.self_modifying_code then
  return mp.INFECTED
end
return mp.CLEAN

