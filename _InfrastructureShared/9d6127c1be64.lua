-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/9d6127c1be64 

-- params : ...
-- function num : 0
if peattributes.isvbnative == true then
  return mp.INFECTED
else
  if (mp.get_mpattribute)("HSTR:IsVB6") then
    return mp.INFECTED
  end
end
return mp.CLEAN

