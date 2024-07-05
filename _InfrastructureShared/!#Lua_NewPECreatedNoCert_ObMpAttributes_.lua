local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.getfilesize
L1_1 = L1_1()
if L1_1 >= 8388608 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L2_2 = L2_2(mp.FILEPATH_QUERY_LOWERCASE)
if L2_2:sub(1, 8) == "\\device\\" then
  L2_2 = MpCommon.PathToWin32Path(L2_2)
  if L2_2 == nil then
    return mp.CLEAN
  end
  L2_2 = string.lower(L2_2)
end
if not MpCommon.QueryPersistContext(L2_2, "NewPECreatedNoCert") then
  MpCommon.AppendPersistContext(L2_2, "NewPECreatedNoCert", 0)
end
return mp.CLEAN
