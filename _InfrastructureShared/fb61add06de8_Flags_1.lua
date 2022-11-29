-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/fb61add06de8_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 2 or mp.HSTR_WEIGHT == 3 then
  return mp.LOWFI
end
if peattributes.ismsil then
  return mp.INFECTED
end
return mp.CLEAN

