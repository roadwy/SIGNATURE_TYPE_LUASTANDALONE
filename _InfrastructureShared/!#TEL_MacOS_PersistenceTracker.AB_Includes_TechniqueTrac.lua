local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L3_3 = mp
L3_3 = L3_3.bitor
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_FNAME
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_PATH
L3_3 = L3_3(L4_4, L5_5)
L4_4 = mp
L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
L16_16 = L2_2(L3_3, L4_4)
L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L2_2(L3_3, L4_4))
if L2_2 == nil or L2_2 == "" or L1_1 == nil or L1_1 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = false
L4_4 = string
L4_4 = L4_4.find
L5_5 = L1_1
L6_6 = "/system/library/launch"
L7_7 = 1
L8_8 = true
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
if L4_4 ~= 1 then
  L4_4 = mp
  L4_4 = L4_4.get_contextdata
  L5_5 = mp
  L5_5 = L5_5.CONTEXT_DATA_PROCESS_PPID
  L4_4 = L4_4(L5_5)
  function L5_5(A0_17)
    if string.find(A0_17, "com.apple.", 1, true) == 1 or string.find(A0_17, "com.", 1, true) ~= 1 then
      MpCommon.BmTriggerSig(_UPVALUE0_, "BM_SuspMacLaunchItemName", _UPVALUE1_ .. "/" .. _UPVALUE2_)
    end
  end
  suspNameCheck = L5_5
  L5_5 = string
  L5_5 = L5_5.find
  L6_6 = L1_1
  L7_7 = "/library/launchagents"
  L8_8 = 1
  L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
  if L5_5 then
    L5_5 = string
    L5_5 = L5_5.find
    L6_6 = L1_1
    L7_7 = "/users/"
    L8_8 = 1
    L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
    if L5_5 == 1 then
      L5_5 = TrackPidAndTechnique
      L6_6 = L4_4
      L7_7 = "T1543.001"
      L8_8 = "Persistence_UserLaunchAgent"
      L5_5(L6_6, L7_7, L8_8)
    else
      L5_5 = TrackPidAndTechnique
      L6_6 = L4_4
      L7_7 = "T1543.001"
      L8_8 = "Persistence_GlobalLaunchAgent"
      L5_5(L6_6, L7_7, L8_8)
    end
    L5_5 = suspNameCheck
    L6_6 = L2_2
    L5_5(L6_6)
    L3_3 = true
  else
    L5_5 = string
    L5_5 = L5_5.find
    L6_6 = L1_1
    L7_7 = "/library/launchdaemons"
    L8_8 = 1
    L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
    if L5_5 then
      L5_5 = TrackPidAndTechnique
      L6_6 = L4_4
      L7_7 = "T1543.004"
      L8_8 = "Persistence_LaunchDaemon"
      L5_5(L6_6, L7_7, L8_8)
      L5_5 = suspNameCheck
      L6_6 = L2_2
      L5_5(L6_6)
      L3_3 = true
    end
  end
  if L3_3 then
    function L5_5(A0_18)
      if A0_18 == "" or A0_18 == nil then
        return true
      end
      if string.find(A0_18, "/bin/", 1, true) == 1 or string.find(A0_18, "/System/", 1, true) == 1 or string.find(A0_18, "/sbin/", 1, true) == 1 or string.find(A0_18, "/Library/Apple/", 1, true) == 1 or string.find(A0_18, "/private/var/db/com.apple.xpc.roleaccountd.staging", 1, true) == 1 or string.find(A0_18, "/usr/", 1, true) == 1 and string.find(A0_18, "/usr/local/", 1, true) ~= 1 or string.find(A0_18, "/Applications/Microsoft Defender.app/", 1, true) == 1 then
        return true
      end
      return false
    end
    IsProcessExcluded = L5_5
    L5_5 = mp
    L5_5 = L5_5.getfilesize
    L5_5 = L5_5()
    if L5_5 > 10000 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = mp
    L6_6 = L6_6.readprotection
    L7_7 = false
    L6_6(L7_7)
    L6_6 = mp
    L6_6 = L6_6.readfile
    L7_7 = 0
    L8_8 = L5_5
    L6_6 = L6_6(L7_7, L8_8)
    L7_7 = mp
    L7_7 = L7_7.readprotection
    L8_8 = true
    L7_7(L8_8)
    if not L6_6 then
      L7_7 = mp
      L7_7 = L7_7.CLEAN
      return L7_7
    end
    function L7_7(A0_19)
      if A0_19 ~= "" and A0_19 ~= nil and #A0_19 > 10 and string.find(A0_19, "/", 1, true) == 1 and not IsProcessExcluded(A0_19) then
        return true
      end
      return false
    end
    fileCheckPassed = L7_7
    function L7_7(A0_20)
      if A0_20 ~= nil and A0_20 ~= "" then
        A0_20 = string.lower(A0_20)
        if A0_20:match("osascript.*with%sadministrator%sprivileges") or A0_20:match("echo.*/bin/bash") or A0_20:match("echo.*/bin/zsh") or A0_20:match("echo.*/bin/sh") or A0_20:match("base64%s%-d") then
          MpCommon.BmTriggerSig(_UPVALUE0_, "BM_SuspMacLaunchItem", _UPVALUE1_ .. "/" .. _UPVALUE2_)
          return true
        end
      end
      return false
    end
    SuspPersistence = L7_7
    L7_7 = ""
    L8_8 = {}
    if L9_9 then
      if L9_9 ~= nil and L9_9 ~= "" then
        if L10_10 then
          L10_10(L11_11, L12_12)
        end
        L7_7 = L10_10 .. L11_11 .. L12_12
      end
    end
    if L9_9 then
      for L12_12 in L9_9(L10_10, L11_11) do
        for L16_16 in L13_13(L14_14, L15_15) do
          if L16_16 ~= nil and L16_16 ~= "" then
            if fileCheckPassed(L16_16) then
              table.insert(L8_8, L16_16)
            end
            L7_7 = L7_7 .. " " .. L16_16
          end
        end
      end
    end
    L9_9(L10_10)
    checkAdhocUnsigned = L9_9
    if L8_8 then
      if L9_9 > 0 then
        for L13_13, L14_14 in L10_10(L11_11) do
          L16_16 = L14_14
          if L15_15 then
            L16_16 = L9_9
            L15_15(L16_16, "persisted_items", L14_14)
            L16_16 = L14_14
            if L15_15 then
              L16_16 = L14_14
              L15_15(L16_16, 1523570201)
            end
          end
        end
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
