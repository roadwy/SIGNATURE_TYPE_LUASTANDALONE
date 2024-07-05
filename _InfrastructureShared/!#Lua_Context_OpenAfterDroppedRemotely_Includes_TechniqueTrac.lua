local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.FILEPATH_QUERY_LOWERCASE
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.sub
L1_1 = L1_1(L0_0, 1, 8)
if L1_1 == "\\device\\" then
  L1_1 = MpCommon
  L1_1 = L1_1.PathToWin32Path
  L1_1 = L1_1(L0_0)
  L0_0 = L1_1
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(L0_0)
L0_0 = L1_1
L1_1 = IsKeyInRollingQueue
L1_1 = L1_1("DroppedByPossibleRemotelyCreatedProc", L0_0, true)
if L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L1_1 = L1_1(mp.CONTEXT_DATA_PROCESSNAME)
  if L1_1 == nil then
    return mp.CLEAN
  end
  L1_1 = string.lower(L1_1)
  mp.set_mpattribute("Lua:Context/OpenAfterDroppedRemotely!" .. L1_1)
  if ("cscript.exe|wscript.exe|mshta.exe|cmd.exe|powershell.exe|pwsh.exe|console.exe|bash.exe|dllhost.exe|rundll32.exe|regsvr32.exe|wmiprvse.exe|svchost.exe|wsmprovhost.exe|"):find(L1_1) then
    mp.set_mpattribute("Lua:Context/OpenAfterDroppedRemotely!lolbin")
    mp.set_mpattribute("Lua:Context/OpenAfterDroppedRemotely!" .. L1_1)
  end
  TrackPidAndTechnique("RTP", "T1570", "exec_remotedroppedscript_b")
  return mp.INFECTED
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
