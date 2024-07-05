local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 ~= nil then
  L2_2 = L0_0
  L1_1 = L0_0.find
  L3_3 = "%-%>%(UTF%-16LE%)$"
  L1_1 = L1_1(L2_2, L3_3)
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
L14_14 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L2_2(L3_3))
L2_2 = "|explorer.exe|"
L4_4 = L2_2
L3_3 = L2_2.find
L5_5 = L1_1
L3_3 = L3_3(L4_4, L5_5)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = tostring
L4_4 = headerpage
L3_3 = L3_3(L4_4)
L4_4 = string
L4_4 = L4_4.match
L5_5 = L3_3
L6_6 = "<Exec>.*<Command>(.*)</Command>.*</Exec>"
L4_4 = L4_4(L5_5, L6_6)
L5_5 = string
L5_5 = L5_5.match
L6_6 = L3_3
L7_7 = "<Exec>.*<Arguments>(.*)</Arguments>.*</Exec>"
L5_5 = L5_5(L6_6, L7_7)
L6_6 = string
L6_6 = L6_6.match
L7_7 = L3_3
L8_8 = "<Exec>.*<WorkingDirectory>(.*)</WorkingDirectory>.*</Exec>"
L6_6 = L6_6(L7_7, L8_8)
if L4_4 == nil then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
if L6_6 ~= nil then
  L8_8 = L6_6
  L7_7 = L6_6.sub
  L9_9 = -1
  L7_7 = L7_7(L8_8, L9_9)
  if L7_7 ~= "\\" then
    L7_7 = L6_6
    L8_8 = "\\"
    L6_6 = L7_7 .. L8_8
  end
end
L7_7 = L4_4
if L5_5 ~= nil then
  L8_8 = L7_7
  L9_9 = " "
  L7_7 = L8_8 .. L9_9 .. L10_10
end
L8_8 = mp
L8_8 = L8_8.vfo_add_buffer
L9_9 = L7_7
L8_8(L9_9, L10_10, L11_11)
L8_8 = {}
L9_9 = table
L9_9 = L9_9.insert
L9_9(L10_10, L11_11)
L9_9 = MpCommon
L9_9 = L9_9.SetPersistContextNoPath
L9_9(L10_10, L11_11, L12_12)
L9_9 = TrackCommandLineAndTechnique
L9_9(L10_10, L11_11)
if L6_6 ~= nil then
  L9_9 = TrackCommandLineAndTechnique
  L9_9(L10_10, L11_11)
else
  L9_9 = TrackCommandLineAndTechnique
  L9_9(L10_10, L11_11)
  L9_9 = TrackCommandLineAndTechnique
  L9_9(L10_10, L11_11)
end
L9_9 = mp
L9_9 = L9_9.GetExecutablesFromCommandLine
L9_9 = L9_9(L10_10)
for L13_13, L14_14 in L10_10(L11_11) do
  L14_14 = mp.ContextualExpandEnvironmentVariables(L14_14)
  if sysio.IsFileExists("c:\\windows\\system32\\" .. L14_14) then
    L14_14 = "c:\\windows\\system32\\" .. L14_14
  elseif sysio.IsFileExists("c:\\windows\\" .. L14_14) then
    L14_14 = "c:\\windows\\" .. L14_14
  elseif sysio.IsFileExists(L14_14) then
  elseif L6_6 ~= nil and sysio.IsFileExists(L6_6 .. L14_14) then
    L14_14 = L6_6 .. L14_14
  elseif sysio.IsFileExists("c:\\windows\\syswow64\\" .. L14_14) then
    L14_14 = "c:\\windows\\syswow64\\" .. L14_14
  end
  if L14_14:match("windows\\ccmcache\\") or L14_14:match("\\sysvol\\") or L14_14:match("\\netlogon\\") then
    return mp.CLEAN
  end
  if L14_14:match("windowsdefenderatponboardingscript.cmd$") or L14_14:match("defenderatponboarding.cmd$") then
    return mp.CLEAN
  end
  if true then
    if pcall(mp.IsKnownFriendlyFile, L14_14, false, false) then
      if pcall(mp.IsKnownFriendlyFile, L14_14, false, false) then
        mp.ReportLowfi(L14_14, 2557680683)
      else
        mp.ReportLowfi(L14_14, 3998179614)
      end
    end
    if not MpCommon.QueryPersistContext(L14_14, "SuspPathsFromSchTask") then
      MpCommon.AppendPersistContext(L14_14, "SuspPathsFromSchTask", 3600)
    end
  end
end
return L10_10
