if mp.isparanoid() then
  mp.set_mpattribute("MpEnableExhaustiveDexScanning")
  return mp.INFECTED
end
return mp.CLEAN
