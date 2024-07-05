if mp.get_mpattribute("SIGATTR:GetSystemTimeBailout") then
  return mp.INFECTED
end
return mp.CLEAN
