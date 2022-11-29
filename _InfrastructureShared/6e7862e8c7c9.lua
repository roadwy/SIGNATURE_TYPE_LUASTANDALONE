-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6e7862e8c7c9 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 101 then
  return mp.INFECTED
else
  if mp.HSTR_WEIGHT > 199 then
    return mp.SUSPICIOUS
  end
end
return mp.CLEAN

