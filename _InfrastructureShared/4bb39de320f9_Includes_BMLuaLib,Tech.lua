local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(L2_2)
    L0_0 = L1_1
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = bm_AddRelatedFileFromCommandLine
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  return L2_2
end
for L5_5, L6_6 in L2_2(L3_3) do
  if L6_6 ~= nil and L6_6 ~= "" then
    L7_7 = StringEndsWith
    L7_7 = L7_7(L6_6, ".js")
    if not L7_7 then
      L7_7 = StringEndsWith
      L7_7 = L7_7(L6_6, ".vbs")
    elseif L7_7 then
      L7_7 = L6_6.lower
      L7_7 = L7_7(L6_6)
      L6_6 = L7_7
      L7_7 = sysio
      L7_7 = L7_7.IsFileExists
      L7_7 = L7_7(L6_6)
      if L7_7 then
        L7_7 = IsKeyInRollingQueue
        L7_7 = L7_7("CC_filelist", L6_6, true)
        if L7_7 then
          L7_7 = {}
          if GetTrackingDataForFile(L6_6, L7_7) and L7_7 ~= nil then
            L7_7 = safeJsonSerialize(L7_7)
            bm.add_related_string("CC_filelist", L7_7, bm.RelatedStringBMReport)
          end
        end
      end
    end
  end
end
return L2_2
