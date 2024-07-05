local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 == mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L0_0 = L0_0(mp.CONTEXT_DATA_FILENAME)
  if string.sub(L0_0, -20) == "________________.exe" then
    mp.set_mpattribute("LUA:TrickLongFilename")
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
