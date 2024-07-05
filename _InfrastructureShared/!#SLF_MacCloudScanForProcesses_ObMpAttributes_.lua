local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L2_2 = L2_2(mp.CONTEXT_DATA_FILEPATH)
  L1_1 = L1_1(L2_2, L2_2(mp.CONTEXT_DATA_FILEPATH))
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "/documents", 1, true)
  if L2_2 == nil then
    L2_2 = string
    L2_2 = L2_2.find
    L2_2 = L2_2(L1_1, "/downloads", 1, true)
    if L2_2 == nil then
      L2_2 = string
      L2_2 = L2_2.find
      L2_2 = L2_2(L1_1, "/tmp", 1, true)
    end
  elseif L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
    if string.find(L2_2, "curl", 1, true) ~= nil or string.find(L2_2, "wget", 1, true) ~= nil or string.find(L2_2, "safari", 1, true) ~= nil or string.find(L2_2, "unzip", 1, true) ~= nil then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
