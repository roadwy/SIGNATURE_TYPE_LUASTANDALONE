local L0_0, L1_1
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L0_0(L1_1, mp.CONTEXT_DATA_CONTROL_GUID)
if L0_0 and pcall(mp.get_contextdata, mp.CONTEXT_DATA_SCANREASON) and pcall(mp.get_contextdata, mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_VALIDATION_PRESCAN and (string.match(L1_1, "19916e01%-b44e%-4e31%-94a4%-4696df46157b") or string.match(L1_1, "c2c4f00a%-720e%-4389%-aeb9%-e9c4b0d93c6f") or string.match(L1_1, "53001f3a%-f5e1%-4b90%-9c9f%-00e09b53c5f1")) then
  mp.aggregate_mpattribute("Context:ICARDIEDLL")
  mp.aggregate_mpattribute("//MpIsIEVScan")
  return mp.TRUE
end
return mp.FALSE
