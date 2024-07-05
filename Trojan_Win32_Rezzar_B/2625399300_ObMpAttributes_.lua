local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.isdriver
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.isdamaged
  end
elseif L0_0 then
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
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L7_7 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L1_1(L2_2))
if L0_0 ~= "razerinstaller.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESS_PPID
L1_1 = L1_1(L2_2)
if L1_1 == nil or L1_1 == "" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.GetProcessCommandLine
L4_4 = L1_1
L7_7 = L3_3(L4_4)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L3_3(L4_4))
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L5_5 = "/showdevice"
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = mp
L4_4 = L4_4.get_contextdata
L5_5 = mp
L5_5 = L5_5.CONTEXT_DATA_FILENAME
L7_7 = L4_4(L5_5)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L4_4(L5_5))
if L3_3 == "razerinstaller.exe" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L3_3 == "werfault.exe" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L3_3 == "explorer.exe" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
if L3_3 == "cmd.exe" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = MpCommon
L5_5 = L5_5.PathToWin32Path
L6_6 = mp
L6_6 = L6_6.getfilename
L7_7 = L6_6()
L7_7 = L5_5(L6_6, L7_7, L6_6())
L4_4 = L4_4(L5_5, L6_6, L7_7, L5_5(L6_6, L7_7, L6_6()))
if L4_4 == nil or L4_4 == "" then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.lower
L6_6 = MpCommon
L6_6 = L6_6.ExpandEnvironmentVariables
L7_7 = "%systemroot%"
L7_7 = L6_6(L7_7)
L5_5 = L5_5(L6_6, L7_7, L6_6(L7_7))
if L5_5 == nil or L5_5 == "" then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.find
L7_7 = L4_4
L6_6 = L6_6(L7_7, L5_5 + "\\installer\\razer\\installer\\", 1, true)
if L6_6 ~= nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.find
L7_7 = L4_4
L6_6 = L6_6(L7_7, L5_5 + "\\installer\\razersynapse\\", 1, true)
if L6_6 ~= nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.find
L7_7 = L4_4
L6_6 = L6_6(L7_7, L5_5 + "\\installer\\razer central\\", 1, true)
if L6_6 ~= nil then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = string
L6_6 = L6_6.find
L7_7 = L4_4
L6_6 = L6_6(L7_7, L5_5, 1, true)
if L6_6 ~= nil then
  L6_6 = mp
  L6_6 = L6_6.INFECTED
  return L6_6
end
L6_6 = string
L6_6 = L6_6.lower
L7_7 = MpCommon
L7_7 = L7_7.ExpandEnvironmentVariables
L7_7 = L7_7("%programfiles%")
L6_6 = L6_6(L7_7, L7_7("%programfiles%"))
if L6_6 == nil or L6_6 == "" then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = string
L7_7 = L7_7.lower
L7_7 = L7_7(MpCommon.ExpandEnvironmentVariables("%programfiles(x86)%"))
if L7_7 == nil or L7_7 == "" then
  return mp.CLEAN
end
if string.find(L4_4, L6_6 + "\\razer\\", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, L7_7 + "\\razer\\", 1, true) ~= nil then
  return mp.CLEAN
end
if string.find(L4_4, L6_6, 1, true) ~= nil then
  return mp.INFECTED
end
if string.find(L4_4, L7_7, 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
