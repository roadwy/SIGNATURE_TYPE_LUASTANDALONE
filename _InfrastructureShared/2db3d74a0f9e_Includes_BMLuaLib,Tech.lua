local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p2
    L2_2 = L2_2(L3_3)
    L0_0 = L2_2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L3_3 = L3_3.utf8p2
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
  end
end
if L0_0 == nil or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.image_path
L3_3 = bm_AddRelatedFileFromCommandLine
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  return L4_4
end
for L7_7, L8_8 in L4_4(L5_5) do
  if L8_8 ~= nil and L8_8 ~= "" then
    L9_9 = StringEndsWith
    L10_10 = L8_8
    L11_11 = ".cmd"
    L9_9 = L9_9(L10_10, L11_11)
    if not L9_9 then
      L9_9 = StringEndsWith
      L10_10 = L8_8
      L11_11 = ".bat"
      L9_9 = L9_9(L10_10, L11_11)
    elseif L9_9 then
      L10_10 = L8_8
      L9_9 = L8_8.lower
      L9_9 = L9_9(L10_10)
      L8_8 = L9_9
      L9_9 = sysio
      L9_9 = L9_9.IsFileExists
      L10_10 = L8_8
      L9_9 = L9_9(L10_10)
      if L9_9 then
        L9_9 = IsKeyInRollingQueue
        L10_10 = "CC_filelist"
        L11_11 = L8_8
        L9_9 = L9_9(L10_10, L11_11, true)
        if L9_9 then
          L9_9 = 31536000
          L10_10 = {}
          L10_10.type = "PLCMD"
          L10_10.ProcessImagePath = L2_2
          L11_11 = this_sigattrlog
          L11_11 = L11_11[2]
          L11_11 = L11_11.ppid
          L10_10.ProcessPID = L11_11
          L10_10.ProcessCmd = L1_1
          L11_11 = this_sigattrlog
          L11_11 = L11_11[1]
          L11_11 = L11_11.ppid
          L10_10.parent = L11_11
          L10_10.score = 4
          L11_11 = AppendToRollingQueue
          L11_11("CC_filelist", L2_2, safeJsonSerialize(L10_10), L9_9, 32)
          L11_11 = {}
          if GetTrackingDataForFile(L8_8, L11_11) and L11_11 ~= nil then
            L11_11 = safeJsonSerialize(L11_11)
            bm.add_related_string("CC_filelist", L11_11, bm.RelatedStringBMReport)
          end
        end
      end
    end
  end
end
return L4_4
