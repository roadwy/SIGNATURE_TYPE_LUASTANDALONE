-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/67becb0141b1 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 5 then
  (mp.set_mpattribute)("PUA:Block:SMSReg.H!MTB")
  return mp.INFECTED
end
return mp.LOWFI
