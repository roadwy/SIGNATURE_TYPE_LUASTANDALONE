if mp.get_mpattribute("MpIsWmiMofScan") then
  return mp.INFECTED
end
return mp.CLEAN
