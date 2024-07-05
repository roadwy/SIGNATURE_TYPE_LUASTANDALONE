if mp.get_mpattribute("SIGATTR:Ransom:Win32/Sodin") then
  return mp.INFECTED
end
return mp.CLEAN
