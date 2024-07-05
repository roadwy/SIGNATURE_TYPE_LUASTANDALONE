if mp.get_mpattribute("SIGATTR:DeleteMyAppExe") and mp.get_mpattribute("SIGATTR:DropMZ") and mp.get_mpattribute("SIGATTR:WRITESYSDIR") then
  return mp.INFECTED
end
return mp.LOWFI
