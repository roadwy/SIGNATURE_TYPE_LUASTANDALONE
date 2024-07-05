local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 == true then
  L0_0 = peattributes
  L0_0 = L0_0.isdll
  if L0_0 ~= true then
    L0_0 = peattributes
    L0_0 = L0_0.isdriver
  end
elseif L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1()
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = ""
else
  L3_3 = L3_3 or L2_2
end
L4_4 = L3_3
L3_3 = L3_3.lower
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = "contextualpersistdropnewexepe"
L4_4 = {}
L4_4["7zfm.exe"] = true
L4_4["bitsadmin.exe"] = true
L4_4["cmd.exe"] = true
L4_4["cscript.exe"] = true
L4_4["excel.exe"] = true
L4_4["explorer.exe"] = true
L4_4["mshta.exe"] = true
L4_4["outlook.exe"] = true
L4_4["powerpnt.exe"] = true
L4_4["winrar.exe"] = true
L4_4["winword.exe"] = true
L4_4["winzip32.exe"] = true
L4_4["winzip64.exe"] = true
L4_4["wscript.exe"] = true
L4_4["slack.exe"] = true
L4_4["firefox.exe"] = true
L4_4["skypeapp.exe"] = true
L4_4["skypehost.exe"] = true
L4_4["teams.exe"] = true
L5_5 = mp
L5_5 = L5_5.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L5_5 then
  L5_5 = mp
  L5_5 = L5_5.get_contextdata
  L6_6 = mp
  L6_6 = L6_6.CONTEXT_DATA_NEWLYCREATEDHINT
  L5_5 = L5_5(L6_6)
  if not L5_5 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = L4_4[L2_2]
  if L5_5 ~= true then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = MpCommon
  L5_5 = L5_5.PathToWin32Path
  L6_6 = mp
  L6_6 = L6_6.get_contextdata
  L7_7 = mp
  L7_7 = L7_7.CONTEXT_DATA_FILEPATH
  L9_9 = L6_6(L7_7)
  L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L6_6(L7_7))
  if L5_5 == nil then
    L6_6 = ""
  else
    L6_6 = L6_6 or L5_5
  end
  L7_7 = L6_6
  L6_6 = L6_6.lower
  L6_6 = L6_6(L7_7)
  L5_5 = L6_6
  L6_6 = mp
  L6_6 = L6_6.ContextualExpandEnvironmentVariables
  L7_7 = "%temp%"
  L6_6 = L6_6(L7_7)
  if L6_6 == nil then
    L7_7 = ""
  else
    L7_7 = L7_7 or L6_6
  end
  L8_8 = L7_7
  L7_7 = L7_7.lower
  L7_7 = L7_7(L8_8)
  L6_6 = L7_7
  L7_7 = mp
  L7_7 = L7_7.ContextualExpandEnvironmentVariables
  L8_8 = "%appdata%"
  L7_7 = L7_7(L8_8)
  if L7_7 == nil then
    L8_8 = ""
  else
    L8_8 = L8_8 or L7_7
  end
  L9_9 = L8_8
  L8_8 = L8_8.lower
  L8_8 = L8_8(L9_9)
  L7_7 = L8_8
  L8_8 = mp
  L8_8 = L8_8.ContextualExpandEnvironmentVariables
  L9_9 = "%localappdata%"
  L8_8 = L8_8(L9_9)
  if L8_8 == nil then
    L9_9 = ""
  else
    L9_9 = L9_9 or L8_8
  end
  L9_9 = L9_9.lower
  L9_9 = L9_9(L9_9)
  L8_8 = L9_9
  L9_9 = mp
  L9_9 = L9_9.ContextualExpandEnvironmentVariables
  L9_9 = L9_9("%userprofile%")
  L9_9 = (L9_9 == nil and "" or L9_9):lower()
  if L5_5:find(L6_6, 1, true) == nil and L5_5:find(L7_7, 1, true) == nil and L5_5:find(L9_9, 1, true) == nil and L5_5:find(L8_8, 1, true) == nil then
    return mp.CLEAN
  end
  if not MpCommon.QueryPersistContext(L1_1, L3_3) then
    MpCommon.AppendPersistContext(L1_1, L3_3, 30)
    mp.set_mpattribute("MpDisableCaching")
  end
else
  L5_5 = mp
  L5_5 = L5_5.SCANREASON_ONOPEN
  if L0_0 == L5_5 then
    L5_5 = MpCommon
    L5_5 = L5_5.QueryPersistContext
    L6_6 = L1_1
    L7_7 = L3_3
    L5_5 = L5_5(L6_6, L7_7)
    if L5_5 then
      L5_5 = mp
      L5_5 = L5_5.get_contextdata
      L6_6 = mp
      L6_6 = L6_6.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
      L5_5 = L5_5(L6_6)
      if L5_5 then
        L5_5 = L4_4[L2_2]
        if L5_5 == true then
          L5_5 = mp
          L5_5 = L5_5.INFECTED
          return L5_5
        end
      end
      L5_5 = mp
      L5_5 = L5_5.set_mpattribute
      L6_6 = "MpDisableCaching"
      L5_5(L6_6)
    end
  end
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
