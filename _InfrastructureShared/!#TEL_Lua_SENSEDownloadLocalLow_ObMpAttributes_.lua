if mp.GetScanSource() == mp.SCANSOURCE_SENSE and (string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-8) == "locallow" or string.lower(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH)):sub(-9) == "downloads") then
  return mp.INFECTED
end
return mp.CLEAN
