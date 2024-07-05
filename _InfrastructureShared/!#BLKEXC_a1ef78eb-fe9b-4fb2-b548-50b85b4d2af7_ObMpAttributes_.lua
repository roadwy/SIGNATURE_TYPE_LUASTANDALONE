local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "a1ef78eb-fe9b-4fb2-b548-50b85b4d2af7"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.isdamaged
if L0_0 then
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
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 ~= "msedgewebview2.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSDEVICEPATH
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = MpCommon
L2_2 = L2_2.PathToWin32Path
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L5_5 = "\\"
L6_6 = L0_0
L4_4 = L4_4 .. L5_5 .. L6_6
L3_3 = L3_3(L4_4)
if L3_3 == nil or L3_3 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = MpCommon
L5_5 = L5_5.ExpandEnvironmentVariables
L6_6 = "%programfiles%"
L11_11 = L5_5(L6_6)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L5_5(L6_6))
if L1_1 == nil or L1_1 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.find
L6_6 = L3_3
L7_7 = L4_4
L8_8 = "[^\\]*\\microsoft\\edgewebview\\application\\[%d%.]+\\msedgewebview2.exe"
L7_7 = L7_7 .. L8_8
L5_5 = L5_5(L6_6, L7_7)
if L5_5 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.get_contextdata
L6_6 = mp
L6_6 = L6_6.CONTEXT_DATA_PROCESS_PPID
L5_5 = L5_5(L6_6)
if L5_5 == nil or L5_5 == "" then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.lower
L7_7 = mp
L7_7 = L7_7.GetProcessCommandLine
L8_8 = L5_5
L11_11 = L7_7(L8_8)
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L7_7(L8_8))
if L6_6 ~= nil then
  L7_7 = string
  L7_7 = L7_7.len
  L8_8 = L6_6
  L7_7 = L7_7(L8_8)
elseif L7_7 == 0 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = string
L7_7 = L7_7.match
L8_8 = L6_6
L9_9 = "%-%-type=([^%s]+).*%-%-webview%-exe%-name=([^%s]+)"
L8_8 = L7_7(L8_8, L9_9)
if L7_7 == nil or L7_7 == "" then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = {}
L9_9.renderer = true
L9_9["gpu-process"] = true
L9_9.utility = true
L10_10 = L9_9[L7_7]
if L10_10 ~= true then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
if L8_8 == nil or L8_8 == "" then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = {}
L10_10["outlook.exe"] = true
L10_10["olk.exe"] = true
L11_11 = L10_10[L8_8]
if L11_11 ~= true then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = mp
L11_11 = L11_11.getfilename
L11_11 = L11_11(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L11_11 == nil or L11_11 == "" then
  return mp.CLEAN
end
L11_11 = string.lower(MpCommon.PathToWin32Path(L11_11))
if mp.IsPathExcludedForHipsRule(L11_11, "a1ef78eb-fe9b-4fb2-b548-50b85b4d2af7") then
  return mp.CLEAN
end
if string.find(L11_11, ".:\\windows\\system32\\werfault%.exe") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, ".:\\windows\\system32\\wermgr%.exe") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, ".:\\windows\\syswow64\\wermgr%.exe") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, ".:\\programdata\\app%-v\\[^\\]+\\[^\\]+\\root\\vfs\\programfilesx86\\microsoft\\edgewebview\\application\\[%d%.]+\\identity_helper%.exe") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, L4_4 .. "[^\\]*\\microsoft\\edgewebview\\application\\[%d%.]+\\identity_helper%.exe") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, L4_4 .. "[^\\]*\\sogouinput\\") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, L4_4 .. "[^\\]*\\sogouwbinput\\") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, L4_4 .. "[^\\]*\\tencent\\") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, L4_4 .. "[^\\]*\\microsoft office\\") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, L4_4 .. "[^\\]*\\adobe\\") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, L4_4 .. "[^\\]*\\google\\") ~= nil then
  return mp.CLEAN
end
if string.find(L11_11, L4_4 .. "[^\\]*\\7%-zip\\") ~= nil then
  return mp.CLEAN
end
return mp.INFECTED
