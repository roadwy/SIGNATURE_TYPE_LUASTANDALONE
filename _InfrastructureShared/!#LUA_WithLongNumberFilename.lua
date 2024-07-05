local L0_0, L1_1
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
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_FILENAME)
  if string.match(L1_1, "%a%a%a%a%a+%_%d%d%d%d%d%d%d%d%d%d%d+%.exe") then
    mp.set_mpattribute("LUA:WithLongNumberFilename")
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
