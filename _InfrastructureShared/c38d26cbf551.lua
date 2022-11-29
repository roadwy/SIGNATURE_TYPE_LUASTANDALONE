-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c38d26cbf551 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 22 then
  (mp.set_mpattribute)("PUA:Block:InstallCore.C")
  return mp.INFECTED
end
return mp.LOWFI

