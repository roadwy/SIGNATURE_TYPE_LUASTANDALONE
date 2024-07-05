local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = string
L0_0 = L0_0.lower
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L2_2 = bm
L2_2 = L2_2.get_imagepath
L11_11 = L2_2()
L11_11 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2())
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2()))
L1_1 = MpCommon
L1_1 = L1_1.QueryPersistContext
L2_2 = L0_0
L3_3 = "NewPECreatedNoCert"
L1_1 = L1_1(L2_2, L3_3)
if not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = sysio
L2_2 = L2_2.GetFileLastWriteTime
L3_3 = L0_0
L2_2 = L2_2(L3_3)
L3_3 = sysio
L3_3 = L3_3.GetLastResult
L3_3 = L3_3()
L3_3 = L3_3.Success
if L3_3 and L2_2 ~= 0 then
  L3_3 = L2_2 / 10000000
  L2_2 = L3_3 - 11644473600
  L3_3 = MpCommon
  L3_3 = L3_3.GetCurrentTimeT
  L3_3 = L3_3()
  if not (L2_2 > L3_3) then
    L4_4 = L3_3 - L2_2
  elseif L4_4 > 600 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = -1
  L5_5 = -1
  L6_6 = MpCommon
  L6_6 = L6_6.GetPersistContext
  L6_6 = L6_6(L7_7)
  if L6_6 ~= nil then
    for L10_10, L11_11 in L7_7(L8_8) do
      if tonumber(string.match(L11_11, "^Age:([0-9]+)$")) ~= nil and L4_4 < tonumber(string.match(L11_11, "^Age:([0-9]+)$")) then
        L4_4 = tonumber(string.match(L11_11, "^Age:([0-9]+)$"))
      end
      if tonumber(string.match(L11_11, "^Prevalence:([0-9]+)$")) ~= nil and L5_5 < tonumber(string.match(L11_11, "^Prevalence:([0-9]+)$")) then
        L5_5 = tonumber(string.match(L11_11, "^Prevalence:([0-9]+)$"))
      end
    end
  end
  if L4_4 > -1 and L4_4 <= 1 and L5_5 > -1 and L5_5 <= 100 then
    return L7_7
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
