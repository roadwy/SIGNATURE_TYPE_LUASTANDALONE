-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/ad78ece63e18 

-- params : ...
-- function num : 0
if (pe.query_import)(pe.IMPORT_STATIC, 3141646879) and (mp.get_mpattribute)("MpHasExpensiveLoop") then
  return mp.INFECTED
end
return mp.CLEAN

