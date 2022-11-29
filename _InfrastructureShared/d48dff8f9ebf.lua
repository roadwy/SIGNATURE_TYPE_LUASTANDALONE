-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/d48dff8f9ebf 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 11 then
  (mp.set_mpattribute)("PUA:Block:Glims.F")
  return mp.INFECTED
end
return mp.LOWFI

