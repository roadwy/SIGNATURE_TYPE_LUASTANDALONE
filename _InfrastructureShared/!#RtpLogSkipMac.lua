local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
function L0_0(A0_8, A1_9)
  return A1_9 ~= nil and A0_8 ~= nil and #A0_8 >= #A1_9 and string.find(A0_8, A1_9, 1, true)
end
function L1_1(A0_10, A1_11)
  local L2_12, L4_13
  L2_12 = A1_11 ~= nil and A0_10 ~= nil and L2_12 >= L4_13 and L2_12 == A1_11
  return L2_12
end
function L2_2(A0_14, A1_15)
  return A1_15 ~= nil and A0_14 ~= nil and #A0_14 >= #A1_15 and (A1_15 == "" or string.sub(A0_14, -string.len(A1_15)) == A1_15)
end
function L3_3(A0_16, A1_17)
  return A1_17 ~= nil and A0_16 ~= nil and #A0_16 == #A1_17 and A0_16 == A1_17
end
L4_4 = skip
L4_4 = L4_4.get_contextdata
L5_5 = skip
L5_5 = L5_5.CONTEXT_DATA_PROCESSNAME
L4_4 = L4_4(L5_5)
L5_5 = skip
L5_5 = L5_5.get_contextdata
L6_6 = skip
L6_6 = L6_6.CONTEXT_DATA_FILEPATH
L5_5 = L5_5(L6_6)
L6_6 = skip
L6_6 = L6_6.get_contextdata
L7_7 = skip
L7_7 = L7_7.CONTEXT_DATA_PROCESSDEVICEPATH
L6_6 = L6_6(L7_7)
L7_7 = skip
L7_7 = L7_7.get_contextdata
L7_7 = L7_7(skip.CONTEXT_DATA_FILENAME)
if L3_3(L4_4, "mdbulkimport") and L1_1(L6_6, "/System/Library/Frameworks/CoreServices.framework") then
  return 1
end
if L3_3(L4_4, "Google Chrome") and L3_3(L6_6, "/Applications/Google Chrome.app/Contents/MacOS") then
  if L2_2(L5_5, "/Library/Caches/Google/Chrome/Default/Code Cache/js") then
    return 1
  elseif L2_2(L7_7, ".ldb") or L2_2(L7_7, ".pak") or L2_2(L7_7, ".db") or L2_2(L7_7, ".log") or L2_2(L7_7, ".tflite") or L2_2(L7_7, ".leveldb") then
    return 1
  end
  return 0
end
if L1_1(L4_4, "Google Chrome Helper") and (L2_2(L6_6, "/Helpers/Google Chrome Helper.app/Contents/MacOS") or L2_2(L6_6, "/Helpers/Google Chrome Helper (Renderer).app/Contents/MacOS")) then
  if L2_2(L5_5, "/Library/Caches/Google/Chrome/Default/Cache/Cache_Data") then
    return 1
  elseif L2_2(L7_7, ".ldb") or L2_2(L7_7, ".pak") or L2_2(L7_7, ".db") or L2_2(L7_7, ".log") or L2_2(L7_7, ".tflite") or L2_2(L7_7, ".leveldb") then
    return 1
  end
  return 0
end
if L3_3(L4_4, "hg.real") then
  if L0_0(L5_5, "/fbsource") then
    return 1
  end
  return 0
end
if L1_1(L6_6, "/Applications/Parallels Desktop.app/Contents/MacOS") then
  if L2_2(L7_7, ".log") then
    return 1
  end
  return 0
end
if L3_3(L4_4, "Microsoft PowerPoint") then
  if L1_1(L7_7, "login.keychain-db") and L2_2(L5_5, "/Library/Keychains") then
    return 1
  end
  return 0
end
if L3_3(L4_4, "Microsoft Outlook") and L3_3(L6_6, "/Applications/Microsoft Outlook.app/Contents/MacOS") then
  if L1_1(L7_7, "login.keychain-db") and L2_2(L5_5, "/Library/Keychains") then
    return 1
  end
  return 0
end
if L3_3(L4_4, "Microsoft Teams Helper") and L3_3(L6_6, "/Applications/Microsoft Teams.app/Contents/Frameworks/Microsoft Teams Helper.app/Contents/MacOS") then
  if L2_2(L5_5, "/Library/Application Support/Microsoft/Teams/Cache") then
    return 1
  end
  return 0
end
if L3_3(L4_4, "Teams") and L3_3(L6_6, "/Applications/Microsoft Teams.app/Contents/MacOS") then
  if L3_3(L7_7, "json") and L2_2(L5_5, "Library/Application Support/Microsoft/Teams") then
    return 1
  end
  if L1_1(L7_7, "login.keychain-db") and L2_2(L5_5, "/Library/Keychains") then
    return 1
  end
  return 0
end
if L3_3(L4_4, "Microsoft Word") and L3_3(L6_6, "/Applications/Microsoft Word.app/Contents/MacOS") then
  if L1_1(L7_7, "login.keychain-db") and L2_2(L5_5, "/Library/Keychains") then
    return 1
  end
  return 0
end
if L3_3(L4_4, "Microsoft Excel") and L3_3(L6_6, "/Applications/Microsoft Excel.app/Contents/MacOS") then
  if L1_1(L7_7, "login.keychain-db") and L2_2(L5_5, "/Library/Keychains") then
    return 1
  end
  return 0
end
if L3_3(L4_4, "Microsoft OneNote") and L3_3(L6_6, "/Applications/Microsoft OneNote.app/Contents/MacOS") then
  if L1_1(L7_7, "login.keychain-db") and L2_2(L5_5, "/Library/Keychains") then
    return 1
  end
  return 0
end
return 0
