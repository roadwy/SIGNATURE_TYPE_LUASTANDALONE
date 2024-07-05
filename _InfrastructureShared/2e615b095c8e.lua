if mp.get_mpattribute("SIGATTR:Adware:Win32/GameVance.A") then
  return mp.INFECTED
end
return mp.CLEAN
