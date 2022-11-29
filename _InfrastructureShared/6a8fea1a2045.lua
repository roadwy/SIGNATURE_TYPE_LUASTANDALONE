-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: /mnt/d/out/_InfrastructureShared/6a8fea1a2045 

-- params : ...
-- function num : 0
if ((mp.get_mpattribute)("RPF:XlsUnknownSheetVeryHidden") and (mp.get_mpattribute)("RPF:XlsAbnormalSheetStateBits")) or (mp.get_mpattribute)("RPF:XlsWorksheetHidden") then
  return mp.INFECTED
end
return mp.CLEAN

