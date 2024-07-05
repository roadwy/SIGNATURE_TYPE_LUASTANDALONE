local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = 60
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = L2_2.ppid
elseif L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L2_2.ppid
L4_4 = ":"
L5_5 = L1_1
L6_6 = ":File_Renamed"
L3_3 = L3_3 .. L4_4 .. L5_5 .. L6_6
L4_4 = IsProcessExcludedFromRansomwareAnalysis
L4_4 = L4_4()
if L4_4 == true then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = this_sigattrlog
L4_4 = L4_4[4]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[4]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[4]
    L4_4 = L4_4.utf8p2
    if L4_4 ~= nil then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[4]
      L4_4 = L4_4.utf8p1
      L5_5 = this_sigattrlog
      L5_5 = L5_5[4]
      L5_5 = L5_5.utf8p2
      L7_7 = L4_4
      L6_6 = L4_4.match
      L8_8 = "[^>]*[\\/$]"
      L6_6 = L6_6(L7_7, L8_8)
      L8_8 = L5_5
      L7_7 = L5_5.match
      L7_7 = L7_7(L8_8, "[^>]*[\\/$]")
      L8_8 = L4_4.match
      L8_8 = L8_8(L4_4, "%.[^/%.]+$")
      if L7_7 ~= nil and L6_6 ~= nil and L6_6 == L7_7 and L8_8 ~= nil and L5_5:match("%.[^/%.]+$") ~= nil and L5_5:match("%.[^/%.]+$") ~= L8_8 and isFileExtensionOfInterest(L5_5) and isKnownFileExtension(L4_4) == false and IsRansomwareProcessImagePathExtensionExcluded(L1_1, L8_8) == false then
        MpCommon.SetPersistContextNoPath(L3_3, {L4_4}, L0_0)
        if analyzeRansomwarePattern5(L3_3, "FILE_RENAMED_WITH_UNIQUE_EXTN") == mp.INFECTED then
          RemediateProcessTreeForLinux()
          return mp.INFECTED
        end
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
