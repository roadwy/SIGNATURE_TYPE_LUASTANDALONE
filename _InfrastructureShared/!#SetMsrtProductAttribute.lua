-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/!#SetMsrtProductAttribute 

-- params : ...
-- function num : 0
if (versioning.GetProduct)() == 13 then
  (mp.set_mpattribute)("/IsMSRTProduct")
end
return mp.CLEAN

