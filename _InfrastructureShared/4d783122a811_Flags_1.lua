if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT == 1 and mp.get_mpattribute("SIGATTR:TrojanSpy:Win32/Keylogger.FA") then
  return mp.INFECTED
end
return mp.CLEAN
