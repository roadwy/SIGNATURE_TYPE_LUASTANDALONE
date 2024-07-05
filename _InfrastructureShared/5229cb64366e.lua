if mp.get_mpattribute("SCPT:HTML/SuspiciousRedirect") then
  return mp.INFECTED
end
return mp.CLEAN
