local L0_0, L1_1, L2_2, L3_3, L4_4
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
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILE_AGE
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 > 18000 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilesize
L2_2 = L2_2()
if L2_2 < 256 or L2_2 > 5242880 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = mp
L4_4 = L4_4.getfilename
L4_4 = L4_4()
L3_3 = L3_3(L4_4, L4_4())
L4_4 = L3_3.find
L4_4 = L4_4(L3_3, "cache", 1, true)
if not L4_4 then
  L4_4 = L3_3.find
  L4_4 = L4_4(L3_3, "crypto", 1, true)
  if not L4_4 then
    L4_4 = L3_3.find
    L4_4 = L4_4(L3_3, "\\scans\\", 1, true)
  end
elseif L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.GetCertificateInfo
L4_4 = L4_4(false)
for _FORV_8_, _FORV_9_ in pairs(L4_4) do
  if _FORV_9_.Signers ~= nil then
    return mp.CLEAN
  end
end
mp.set_mpattribute("Lua:FileNameTokenRelevanceMetric.A")
return mp.CLEAN
