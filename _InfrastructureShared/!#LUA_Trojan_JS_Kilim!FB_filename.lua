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
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(mp.get_contextdata(mp.CONTEXT_DATA_FILENAME))
  if nil ~= string.find(L1_1, "asdfrtv%l%l%l%l%l%l%l%l%.js") then
    mp.set_mpattribute("LUA:Trojan:JS/Kilim!FB_filename")
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
