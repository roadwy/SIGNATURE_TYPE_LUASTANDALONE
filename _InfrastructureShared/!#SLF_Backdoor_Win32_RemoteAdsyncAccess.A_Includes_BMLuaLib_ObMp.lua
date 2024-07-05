local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESS_ID
L0_0 = L0_0(L1_1)
if L0_0 ~= 4 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = IsADConnectRole
L0_0 = L0_0()
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_PATH
L3_3 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2, L3_3))
L3_3 = L0_0
L2_2 = L0_0.find
L2_2 = L2_2(L3_3, "\\Data\\ADSync2019", 1, true)
if L2_2 and L1_1 == "ADSync.mdf" then
  L2_2 = pcall
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L3_3 = L2_2(L3_3, mp.CONTEXT_DATA_REMOTE_SESSION_IP)
  if not L2_2 or not L3_3 or L3_3 == "" then
    return mp.CLEAN
  end
  mp.set_mpattribute(string.format("MpInternal_researchdata=RemoteAdsyncAccess=%s", L3_3))
  return mp.INFECTED
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
