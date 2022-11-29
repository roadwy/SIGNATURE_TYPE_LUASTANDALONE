-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/e58fc87e5e68 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MACRO_HSTR:OfficeAutoOpen") then
  return mp.INFECTED
end
return mp.LOWFI

