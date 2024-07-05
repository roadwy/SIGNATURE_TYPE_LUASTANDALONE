if mp.get_mpattribute("HSTR:SkypeSneak") and mp.get_mpattribute("HSTR:Win32/GenSpy") then
  return mp.INFECTED
end
return mp.CLEAN
