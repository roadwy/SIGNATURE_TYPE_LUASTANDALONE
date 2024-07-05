local L0_0
L0_0 = mp
L0_0 = L0_0.get_contextdata
L0_0 = L0_0(mp.CONTEXT_DATA_SCANREASON)
if L0_0 == mp.SCANREASON_ONOPEN then
  L0_0 = mp
  L0_0 = L0_0.IOAVGetDownloadUrl
  L0_0 = L0_0()
  if L0_0 ~= nil and string.len(L0_0) > 30 and L0_0:find(":3000/attacks/download?", 1, true) then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
