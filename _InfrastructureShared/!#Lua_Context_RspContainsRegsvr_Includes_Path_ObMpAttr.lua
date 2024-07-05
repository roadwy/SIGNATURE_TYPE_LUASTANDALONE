local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L11_11 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L1_1(L2_2))
if L0_0 == "odbcconf.exe" or L0_0 == "explorer.exe" then
  L1_1 = mp
  L1_1 = L1_1.getfilesize
  L1_1 = L1_1()
  if L1_1 <= 4096 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = tostring
    L3_3 = headerpage
    L11_11 = L2_2(L3_3)
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2(L3_3))
    L3_3 = L1_1
    L2_2 = L1_1.gmatch
    L4_4 = "regsvr%s+([%a%d\\.]*)"
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = 5
    L4_4 = 0
    L5_5 = mp
    L5_5 = L5_5.getfilename
    L11_11 = L6_6(L7_7, L8_8)
    L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L6_6(L7_7, L8_8))
    L5_5 = L6_6
    for L9_9 in L2_2, nil, nil do
      L10_10 = L5_5
      L11_11 = "\\"
      L10_10 = L10_10 .. L11_11 .. L9_9
      L11_11 = "DllFromRsp"
      if not MpCommon.QueryPersistContext(L10_10, L11_11) then
        MpCommon.AppendPersistContext(L10_10, L11_11, 100)
        L4_4 = L4_4 + 1
      end
      if L3_3 <= L4_4 then
        break
      end
    end
    return L6_6
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
