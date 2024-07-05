if mp.get_mpattribute("AGGREGATOR:CheckInstalledAV") then
  return mp.INFECTED
end
return mp.CLEAN
