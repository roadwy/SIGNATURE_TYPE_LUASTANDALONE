local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_parent_filehandle
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.is_handle_nil
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_LOWERCASE
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = #L1_1
elseif L2_2 <= 3 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = MpCommon
L2_2 = L2_2.GetPersistContextCount
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 <= 0 or L2_2 > 100 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = MpCommon
L3_3 = L3_3.QueryPersistContext
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L3_3 = MpCommon
  L3_3 = L3_3.QueryPersistContext
  L3_3 = L3_3(L4_4, L5_5)
  if not L3_3 then
    L3_3 = MpCommon
    L3_3 = L3_3.QueryPersistContext
    L3_3 = L3_3(L4_4, L5_5)
  end
elseif L3_3 then
  L3_3 = MpCommon
  L3_3 = L3_3.GetPersistContext
  L3_3 = L3_3(L4_4)
  if L3_3 == nil then
    return L4_4
  end
  for L7_7, L8_8 in L4_4(L5_5) do
    if #L8_8 >= 8 and string.sub(L8_8, 0, 4) == "BM_M" then
      mp.set_mpattribute(L8_8)
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
