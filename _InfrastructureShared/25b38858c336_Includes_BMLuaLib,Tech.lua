local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = GetRollingQueueKeyValue
L2_2 = "CheckSPPatch"
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil then
  L2_2 = "CheckSPPatch"
  L3_3 = 86400
  L4_4 = "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Uninstall"
  L5_5 = sysio
  L5_5 = L5_5.RegOpenKey
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  if not L5_5 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
  L6_6 = sysio
  L6_6 = L6_6.RegEnumKeys
  L6_6 = L6_6(L7_7)
  if not L6_6 then
    return L7_7
  end
  for L10_10, L11_11 in L7_7(L8_8) do
    L12_12 = string
    L12_12 = L12_12.find
    L12_12 = L12_12(L11_11, "{90160000-1012-0000-1000-0000000FF1CE}", 1, true)
    if not L12_12 then
      L12_12 = string
      L12_12 = L12_12.find
      L12_12 = L12_12(L11_11, "{90160000-1010-0000-1000-0000000FF1CE}", 1, true)
      if not L12_12 then
        L12_12 = string
        L12_12 = L12_12.find
        L12_12 = L12_12(L11_11, "{90160000-1014-0000-1000-0000000FF1CE}", 1, true)
      end
    elseif L12_12 then
      L12_12 = sysio
      L12_12 = L12_12.RegOpenKey
      L12_12 = L12_12(L4_4 .. "\\" .. L11_11)
      if L12_12 then
        L1_1 = sysio.GetRegValueAsString(L12_12, "DisplayVersion")
        if not L1_1 then
          return mp.CLEAN
        end
        AppendToRollingQueue(L2_2, L0_0, L1_1, L3_3)
        break
      end
    end
  end
end
if L1_1 ~= nil then
  L2_2 = bm
  L2_2 = L2_2.add_related_string
  L3_3 = "SpPatchVersion"
  L4_4 = L1_1
  L5_5 = bm
  L5_5 = L5_5.RelatedStringBMReport
  L2_2(L3_3, L4_4, L5_5)
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
