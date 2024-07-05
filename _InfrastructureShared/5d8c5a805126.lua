if mp.getfilesize() <= 6144 and mp.get_mpattribute("elfa_isharedlib") then
  return mp.INFECTED
end
return mp.CLEAN
