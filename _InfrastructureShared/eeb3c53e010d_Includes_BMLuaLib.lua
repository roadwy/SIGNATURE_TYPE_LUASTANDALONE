local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = 60
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
if L2_2 ~= nil and L2_2 ~= "" and L1_1 ~= nil then
  L3_3 = L1_1.ppid
  if L3_3 ~= nil then
    L3_3 = L1_1.command_line
    if L3_3 ~= nil then
      L3_3 = L1_1.command_line
    end
  end
elseif L3_3 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetParentProcInfo
L3_3 = L3_3()
if L3_3 ~= nil then
  L4_4 = L3_3.ppid
elseif L4_4 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L3_3.ppid
L5_5 = ":"
L6_6 = L2_2
L4_4 = L4_4 .. L5_5 .. L6_6 .. L7_7
L5_5 = IsProcessExcludedFromRansomwareAnalysis
L5_5 = L5_5()
if L5_5 == true then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = "Ransomware_Analysis_Generic.J"
L6_6 = MpCommon
L6_6 = L6_6.GetPersistContextNoPath
L6_6 = L6_6(L7_7)
if L6_6 ~= nil then
  for L10_10, L11_11 in L7_7(L8_8) do
    L12_12 = string
    L12_12 = L12_12.find
    L13_13 = L1_1.ppid
    L12_12 = L12_12(L13_13, L11_11, 1, true)
    if L12_12 == 1 then
      L12_12 = mp
      L12_12 = L12_12.CLEAN
      return L12_12
    end
  end
end
L7_7(L8_8, L9_9, L10_10)
if L8_8 ~= nil then
  for L12_12, L13_13 in L9_9(L10_10) do
    if string.find(L1_1.command_line, L13_13, 1, true) == 1 then
      return mp.CLEAN
    end
  end
end
L12_12 = L1_1.command_line
L12_12 = L0_0
L9_9(L10_10, L11_11, L12_12)
if L9_9 then
  if L9_9 ~= nil then
    if L9_9 ~= nil then
      L12_12 = L9_9
      L13_13 = "[^>]*[\\/$]"
      L13_13 = L10_10
      L12_12 = L10_10.match
      L12_12 = L12_12(L13_13, "[^>]*[\\/$]")
      L13_13 = L9_9.match
      L13_13 = L13_13(L9_9, "%.[^/%.]+$")
      if L12_12 ~= nil and L11_11 ~= nil and L11_11 == L12_12 and L13_13 ~= nil and L10_10:match("%.[^/%.]+$") ~= nil and L10_10:match("%.[^/%.]+$") ~= L13_13 and isFileExtensionOfInterest(L10_10) and IsRansomwareProcessImagePathExtensionExcluded(L2_2, L13_13) == false then
        MpCommon.SetPersistContextNoPath(L4_4, {L9_9}, L0_0)
        if analyzeRansomwarePattern5(L4_4, "FILE_RENAMED_WITH_KNOWN_EXTN") == mp.INFECTED then
          RemediateProcessTreeForLinux()
          return mp.INFECTED
        end
      end
    end
  end
end
return L9_9
