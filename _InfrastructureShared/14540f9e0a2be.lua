if mp.get_mpattribute("SIGATTR:ExCheckInstalledAV") then
  return mp.CLEAN
end
return mp.INFECTED
