local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
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
L3_3 = IsProcessExcludedFromRansomwareAnalysis
L3_3 = L3_3()
if L3_3 == true then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = "Ransomware_Analysis_pid_Generic.E"
L4_4 = MpCommon
L4_4 = L4_4.GetPersistContextNoPath
L4_4 = L4_4(L5_5)
if L4_4 ~= nil then
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = string
    L10_10 = L10_10.find
    L11_11 = L1_1.ppid
    L10_10 = L10_10(L11_11, L9_9, 1, true)
    if L10_10 == 1 then
      L10_10 = mp
      L10_10 = L10_10.CLEAN
      return L10_10
    end
  end
end
L5_5(L6_6, L7_7, L8_8)
if L6_6 ~= nil then
  for L10_10, L11_11 in L7_7(L8_8) do
    if string.find(L1_1.command_line, L11_11, 1, true) == 1 then
      return mp.CLEAN
    end
  end
end
L10_10 = L1_1.command_line
L10_10 = L0_0
L7_7(L8_8, L9_9, L10_10)
if L7_7 ~= nil then
elseif L8_8 == nil then
  return L8_8
end
L10_10 = L2_2
L11_11 = ":File_Changed"
L10_10 = L2_2
L11_11 = "/bin/tar"
if L9_9 then
  return L9_9
end
if L9_9 then
  if L9_9 ~= nil then
    L10_10 = isMultiExtensionFileName
    L11_11 = L9_9
    L10_10 = L10_10(L11_11)
    if L10_10 == false then
      L10_10 = mp
      L10_10 = L10_10.CLEAN
      return L10_10
    end
    L11_11 = L9_9
    L10_10 = L9_9.match
    L10_10 = L10_10(L11_11, "%.[^/%.]+$")
    if L10_10 == nil then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
    L11_11 = string
    L11_11 = L11_11.find
    L11_11 = L11_11(L2_2, "/usr/bin/gpg", 1, true)
    if L11_11 == 1 then
      L11_11 = string
      L11_11 = L11_11.find
      L11_11 = L11_11(L9_9, "/trustdb.gpg", -12, true)
      if not L11_11 then
        L11_11 = string
        L11_11 = L11_11.find
        L11_11 = L11_11(L9_9, "/secring.gpg", -12, true)
      elseif L11_11 then
        L11_11 = mp
        L11_11 = L11_11.CLEAN
        return L11_11
      end
    end
    L11_11 = L10_10.match
    L11_11 = L11_11(L10_10, "%.(%d+)$")
    if L11_11 == nil then
      L11_11 = L10_10.match
      L11_11 = L11_11(L10_10, "%.%-(%w+)$")
    elseif L11_11 ~= nil then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
    L11_11 = CheckFileExtnIncludeProcessId
    L11_11 = L11_11(L1_1.ppid, L10_10)
    if L11_11 then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
    L11_11 = string
    L11_11 = L11_11.find
    L11_11 = L11_11(L9_9, "/miniconda/", 1, true)
    if not L11_11 then
      L11_11 = string
      L11_11 = L11_11.find
      L11_11 = L11_11(L9_9, "/.cache/", 1, true)
      if not L11_11 then
        L11_11 = string
        L11_11 = L11_11.find
        L11_11 = L11_11(L9_9, "backup/", 1, true)
        if not L11_11 then
          L11_11 = string
          L11_11 = L11_11.find
          L11_11 = L11_11(L9_9, "/backup", 1, true)
          if not L11_11 then
            L11_11 = string
            L11_11 = L11_11.find
            L11_11 = L11_11(L9_9, "/opt/splunk/", 1, true)
          end
        end
      end
    elseif L11_11 == 1 then
      L11_11 = mp
      L11_11 = L11_11.CLEAN
      return L11_11
    end
    L11_11 = isKnownFileExtension
    L11_11 = L11_11(L9_9)
    if L11_11 == false then
      L11_11 = IsRansomwareProcessImagePathExtensionExcluded
      L11_11 = L11_11(L2_2, L10_10)
      if L11_11 == false then
        L11_11 = MpCommon
        L11_11 = L11_11.SetPersistContextNoPath
        L11_11(L8_8, {L9_9}, L0_0)
        L11_11 = analyzeRansomwarePattern5
        L11_11 = L11_11(L8_8, "NEW_FILE_CREATED")
        if L11_11 == mp.INFECTED then
          L11_11 = mp
          L11_11 = L11_11.INFECTED
          return L11_11
        end
      end
    end
  end
end
return L9_9
