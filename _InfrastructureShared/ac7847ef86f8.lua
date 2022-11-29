-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ac7847ef86f8 

-- params : ...
-- function num : 0
if peattributes.ismsil then
  (mp.set_mpattribute)("PUA:Block:WizzRemote:Bit")
  return mp.INFECTED
end
return mp.CLEAN

