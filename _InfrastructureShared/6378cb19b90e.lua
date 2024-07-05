if mp.get_mpattribute("SIGATTR:SelfDelCMD") then
  return mp.INFECTED
end
return mp.CLEAN
