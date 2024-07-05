if mp.get_mpattribute("SIGATTR:ASEP") and mp.get_mpattribute("SIGATTR:RegKeyWinDiag") then
  return mp.INFECTED
end
return mp.CLEAN
