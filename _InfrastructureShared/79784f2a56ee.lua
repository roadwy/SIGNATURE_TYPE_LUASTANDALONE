-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/79784f2a56ee 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("MpHasExpensiveLoop") and peattributes.epatstartentrysect then
  return mp.SUSPICIOUS
end
return mp.LOWFI

