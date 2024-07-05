if mp.get_detectionstatus() == mp.INFECTED or mp.get_mpattribute("SIGATTR:COPY_BELOW_WIN") then
  return mp.INFECTED
end
return mp.CLEAN
