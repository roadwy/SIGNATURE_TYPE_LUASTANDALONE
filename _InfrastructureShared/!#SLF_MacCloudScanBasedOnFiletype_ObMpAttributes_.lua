local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 == L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if string.find(L1_1, "/documents/", 1, true) ~= nil or string.find(L1_1, "/downloads", 1, true) ~= nil or string.find(L1_1, "/tmp/", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
