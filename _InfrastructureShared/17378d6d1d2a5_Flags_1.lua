if not peattributes.isvbnative and not peattributes.isvbpcode and not peattributes.isexe then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 253 then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:TrojanSpy:Win32/VBBanker_lowfi")
return mp.CLEAN
