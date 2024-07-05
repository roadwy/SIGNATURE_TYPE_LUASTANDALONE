local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 == mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L0_0 = L0_0(mp.CONTEXT_DATA_FILENAME)
  if string.sub(L0_0, 1, 1) == "P" then
    L0_0 = string.lower(L0_0)
    if string.match(L0_0, "photo_%d%d%d%.jpe?g%-www%.facebook%.com%.exe") ~= nil then
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
