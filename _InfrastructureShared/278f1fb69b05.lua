if mp.get_mpattribute("RPF:XlsUnknownSheetVeryHidden") and mp.get_mpattribute("BM_OLE_FILE") then
  return mp.INFECTED
end
return mp.CLEAN
