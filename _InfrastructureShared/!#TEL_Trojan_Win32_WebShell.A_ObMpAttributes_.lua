local L0_0, L1_1, L2_2
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
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
if L0_0 == "w3wp.exe" then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_PROCESS_PPID
  L1_1 = L1_1(L2_2)
  L2_2 = mp
  L2_2 = L2_2.GetProcessCommandLine
  L2_2 = L2_2(L1_1)
  if L2_2 == nil then
    return mp.CLEAN
  end
  L2_2 = string.lower(L2_2)
  if L2_2 == nil or string.len(L2_2) == 0 then
    return mp.CLEAN
  end
  if string.find(L2_2, "msexchangeowaapppool", 1, true) == nil and string.find(L2_2, "msexchangeecpapppool", 1, true) == nil then
    return mp.CLEAN
  end
elseif L0_0 ~= "umworkerprocess.exe" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = mp
L2_2 = L2_2.bitor
L2_2 = L2_2(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE)
L1_1 = L1_1(L2_2, L2_2(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_LOWERCASE))
L2_2 = string
L2_2 = L2_2.find
L2_2 = L2_2(L1_1, "\\inetpub\\wwwroot\\", 1, true)
if L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.enum_mpattributesubstring
L2_2 = L2_2("SCPT:pyWebShell")
if #L2_2 >= 5 then
  return mp.INFECTED
end
if 5 <= #mp.enum_mpattributesubstring("SCPT:CsharpWebShell") then
  return mp.INFECTED
end
if #mp.enum_mpattributesubstring("SCPT:jsWebShell") >= 3 then
  return mp.INFECTED
end
if 5 <= #mp.enum_mpattributesubstring("SCPT:jspWebShell") then
  return mp.INFECTED
end
if 5 <= #mp.enum_mpattributesubstring("SCPT:phpWebShell") then
  return mp.INFECTED
end
if 5 <= #L2_2 + #mp.enum_mpattributesubstring("SCPT:CsharpWebShell") + #mp.enum_mpattributesubstring("SCPT:jsWebShell") + #mp.enum_mpattributesubstring("SCPT:jspWebShell") + #mp.enum_mpattributesubstring("SCPT:phpWebShell") then
  return mp.INFECTED
end
return mp.CLEAN
