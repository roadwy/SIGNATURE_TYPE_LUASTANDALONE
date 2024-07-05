if mp.GetScanSource() ~= mp.SCANSOURCE_ONDEMAND then
  return mp.CLEAN
end
return mp.INFECTED
