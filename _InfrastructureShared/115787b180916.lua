-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/115787b180916 

-- params : ...
-- function num : 0
if peattributes.ismsil then
  if mp.HSTR_WEIGHT >= 4 then
    return mp.INFECTED
  end
  return mp.LOWFI
end
return mp.CLEAN

