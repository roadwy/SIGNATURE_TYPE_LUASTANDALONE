local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
if L0_0 == "online interview.exe" then
  return mp.INFECTED
end
return mp.CLEAN
