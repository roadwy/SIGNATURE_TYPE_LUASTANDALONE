if mp.get_mpattribute("SIGATTR:Win32/Banload.ARM") then
  return mp.INFECTED
end
return mp.SUSPICIOUS
