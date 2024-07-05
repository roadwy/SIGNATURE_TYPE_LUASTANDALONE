if not mp.get_mpattribute("MpIsPowerShellAMSIScan") then
  return mp.CLEAN
end
return mp.INFECTED
