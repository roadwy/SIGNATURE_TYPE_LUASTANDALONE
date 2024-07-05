local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = {}
  L1_1["sys.exe"] = true
  L1_1["slups.exe"] = true
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L3_3(mp.CONTEXT_DATA_FILENAME)
  L2_2 = L2_2(L3_3, L3_3(mp.CONTEXT_DATA_FILENAME))
  L3_3 = L1_1[L2_2]
  if L3_3 then
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
    if string.match(L3_3, "\\appdata\\local") then
      return mp.INFECTED
    end
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
