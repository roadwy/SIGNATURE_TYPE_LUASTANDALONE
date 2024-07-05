local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = 60
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L1_1()
L2_2 = bm
L2_2 = L2_2.get_imagepath
L2_2 = L2_2()
if L2_2 ~= nil and L2_2 ~= "" and L1_1 ~= nil then
  L3_3 = L1_1.ppid
elseif L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = L1_1.ppid
L4_4 = ":"
L5_5 = L2_2
L3_3 = L3_3 .. L4_4 .. L5_5 .. ":File_Changed"
L4_4 = IsProcessExcludedFromRansomwareAnalysis
L4_4 = L4_4()
if L4_4 == true then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.find
L5_5 = L2_2
L4_4 = L4_4(L5_5, "/7za", -4, true)
if not L4_4 then
  L4_4 = string
  L4_4 = L4_4.find
  L5_5 = L2_2
  L4_4 = L4_4(L5_5, "/bin/tar", -8, true)
elseif L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = this_sigattrlog
L4_4 = L4_4[6]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[6]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[6]
    L4_4 = L4_4.utf8p1
    L5_5 = isMultiExtensionFileName
    L5_5 = L5_5(L4_4)
    if L5_5 == false then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = L4_4.match
    L5_5 = L5_5(L4_4, "%.[^/%.]+$")
    if L5_5 == nil then
      return mp.CLEAN
    end
    if L5_5:match("%.(%d+)$") ~= nil or L5_5:match("%.%-(%w+)$") ~= nil then
      return mp.CLEAN
    end
    if CheckFileExtnIncludeProcessId(L1_1.ppid, L5_5) then
      return mp.CLEAN
    end
    if string.find(L4_4, "/miniconda/", 1, true) or string.find(L4_4, "/.cache/", 1, true) or string.find(L4_4, "/opt/splunk/", 1, true) == 1 then
      return mp.CLEAN
    end
    if isKnownFileExtension(L4_4) == false and IsRansomwareProcessImagePathExtensionExcluded(L2_2, L5_5) == false then
      MpCommon.SetPersistContextNoPath(L3_3, {L4_4}, L0_0)
      if analyzeRansomwarePattern5(L3_3, "NEW_FILE_CREATED") == mp.INFECTED then
        return mp.INFECTED
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
