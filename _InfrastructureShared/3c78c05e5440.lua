if mp.get_mpattribute("SIGATTR:Backdoor:Win32/Delfdoorlib") then
  return mp.INFECTED
end
return mp.CLEAN
