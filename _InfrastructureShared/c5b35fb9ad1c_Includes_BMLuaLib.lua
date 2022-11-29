-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/c5b35fb9ad1c_Includes_BMLuaLib 

-- params : ...
-- function num : 0
reportSessionInformation()
add_parents()
if reportGenericRansomware("gend_ransom_meta") == mp.INFECTED then
  return mp.INFECTED
end
return mp.CLEAN

