local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:NewFileContextData:ProcName!w3wp.exe"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L1_1 = L1_1(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE)
L0_0 = L0_0(L1_1, L1_1(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.find
L1_1 = L1_1(L0_0, "\\microsoft.net\\framework64\\v4.0.30319\\temporary asp.net files\\", 1, true)
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L1_1 = L1_1(mp.CONTEXT_DATA_PROCESS_PPID)
if L1_1 ~= nil then
  if GetTacticsTableForPid(L1_1) == nil then
    return mp.CLEAN
  end
  if GetTacticsTableForPid(L1_1).webshell_parent then
    return mp.INFECTED
  end
end
return mp.CLEAN
