local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = false
L1_1 = pcall
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_AMSI_OPERATION_PPID
L2_2 = L1_1(L2_2, L3_3)
if L1_1 == nil or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = "BM_MT"
L4_4 = mp
L4_4 = L4_4.enum_mpattributesubstring
L4_4 = L4_4(L5_5)
if L4_4 ~= nil then
  if L5_5 == "table" then
    if L5_5 > 0 then
      for L8_8, L9_9 in L5_5(L6_6) do
        L10_10 = string
        L10_10 = L10_10.sub
        L11_11 = L9_9
        L12_12 = #L3_3
        L10_10 = L10_10(L11_11, L12_12, #L9_9)
        if L10_10 ~= nil then
          L11_11 = #L10_10
          if L11_11 >= 5 then
            L11_11 = string
            L11_11 = L11_11.match
            L12_12 = L10_10
            L12_12 = L11_11(L12_12, "^([tT][0-9][0-9][0-9][0-9][%.]?[0-9]?[0-9]?[0-9]?):?(.*)")
            TrackPidAndTechnique(L2_2, L11_11, L12_12)
            L0_0 = true
          end
        end
      end
    end
  end
end
if L0_0 then
  if L5_5 then
    if L5_5 > 3 then
      L5_5(L6_6)
    end
  end
end
return L5_5
