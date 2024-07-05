if MpCommon.NidSearch(mp.NID_DISABLE_NW_REPORTING, 1) then
  return mp.CLEAN
end
if MpCommon.NidSearch(mp.NID_ENABLE_NW_REPORTING, 1) then
  return mp.INFECTED
end
return mp.CLEAN
