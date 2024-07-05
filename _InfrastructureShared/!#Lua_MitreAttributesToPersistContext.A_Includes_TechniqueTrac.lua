local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = "BM_MT"
L1_1 = mp
L1_1 = L1_1.enum_mpattributesubstring
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = #L1_1
  if L2_2 ~= 0 then
    L2_2 = type
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
  end
elseif L2_2 ~= "table" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.getfilename
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.get_contextdata
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  return L4_4
end
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = string
  L9_9 = L9_9.sub
  L10_10 = L8_8
  L11_11 = #L0_0
  L9_9 = L9_9(L10_10, L11_11, #L8_8)
  if L9_9 ~= nil then
    L10_10 = #L9_9
    if L10_10 >= 4 then
      L10_10 = string
      L10_10 = L10_10.match
      L11_11 = L9_9
      L10_10 = L10_10(L11_11, "^[tT][0-9][0-9][0-9][0-9]")
      if L10_10 then
        L10_10 = MpCommon
        L10_10 = L10_10.QueryPersistContext
        L11_11 = L2_2
        L10_10 = L10_10(L11_11, L9_9)
        if not L10_10 then
          L10_10 = MpCommon
          L10_10 = L10_10.AppendPersistContext
          L11_11 = L2_2
          L10_10(L11_11, L9_9, 0)
        end
        L10_10 = string
        L10_10 = L10_10.match
        L11_11 = L9_9
        L11_11 = L10_10(L11_11, "^([tT][0-9][0-9][0-9][0-9][%.]?[0-9]?[0-9]?[0-9]?):?(.*)")
        TT_SendBMSigTrigger(L3_3, L10_10, L11_11)
      end
    end
  end
end
return L4_4
