local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_FNAME
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_PATH
L2_2 = L2_2(L3_3, L4_4)
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L4_4 = L1_1(L2_2, L3_3)
L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1(L2_2, L3_3))
L2_2 = {}
L2_2["mpclient.dll"] = true
L2_2["mptrace.dll"] = true
L3_3 = L2_2[L1_1]
if L3_3 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.getfilesize
  L3_3 = L3_3()
  if L3_3 < 256 or L3_3 > 2097152 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.GetCertificateInfo
  L4_4 = L4_4()
  for _FORV_8_, _FORV_9_ in L5_5(L4_4) do
    if _FORV_9_.Signers ~= nil and mp.IsTrustedFile(true, false) then
      return mp.CLEAN
    end
  end
  if L5_5 ~= nil then
    return L5_5
  end
  if L5_5 ~= nil then
    return L5_5
  end
  if L5_5 ~= nil then
    return L5_5
  end
  if L5_5 ~= nil then
    return L5_5
  end
  if L5_5 ~= nil then
    return L5_5
  end
  if L5_5 ~= nil then
    return L5_5
  end
  if L5_5 ~= nil then
    return L5_5
  end
  AppendToRollingQueue("DllSideloadMonitor", L5_5, nil, 5000)
  mp.set_mpattribute("Lua:PossiblyForSideloading!" .. L1_1)
  return mp.INFECTED
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
