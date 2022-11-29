-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/5d782af2f66d 

-- params : ...
-- function num : 0
if (pe.query_import)(pe.IMPORT_STATIC, 2832782153) ~= 0 and (pe.query_import)(pe.IMPORT_STATIC, 3514167808) ~= 0 and (pe.query_import)(pe.IMPORT_STATIC, 1794917727) ~= 0 then
  return mp.INFECTED
end
return mp.CLEAN

