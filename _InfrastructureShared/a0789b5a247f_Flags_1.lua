-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/a0789b5a247f_Flags_1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 5 then
  return mp.INFECTED
else
  if (hstrlog[1]).matched then
    return mp.LOWFI
  end
end
return mp.CLEAN

