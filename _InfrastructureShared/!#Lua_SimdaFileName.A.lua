local L0_0, L1_1, L2_2
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
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_FILENAME
  L1_1 = L1_1(L2_2)
  if L1_1 ~= "flashsec.exe" then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(mp.get_contextdata(mp.CONTEXT_DATA_FILEPATH))
  if string.sub(L2_2, -23) == "\\application data\\flash" or string.sub(L2_2, -22) == "\\appdata\\roaming\\flash" then
    mp.set_mpattribute("Lua:SimdaFileName.A")
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
