local L0_0, L1_1, L2_2
L0_0 = GetTacticsTableForPid
L1_1 = "RTP"
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = false
L2_2 = L0_0.wmi_childproc
if L2_2 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L2_2("Lua:DroppedByWmiChildProc")
  L1_1 = true
else
  L2_2 = L0_0.wsmprovhost_childproc
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.set_mpattribute
    L2_2("Lua:DroppedByWSMChildProc")
    L1_1 = true
  else
    L2_2 = L0_0.winrshost_childproc
    if L2_2 then
      L2_2 = mp
      L2_2 = L2_2.set_mpattribute
      L2_2("Lua:DroppedByWinrsChildProc")
      L1_1 = true
    else
      L2_2 = L0_0.ExecRemoteDroppedExe
      if L2_2 then
        L2_2 = mp
        L2_2 = L2_2.set_mpattribute
        L2_2("Lua:DroppedByRemoteDropExeChildProc")
        L1_1 = true
      end
    end
  end
end
if L1_1 then
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L2_2 = L2_2(mp.FILEPATH_QUERY_LOWERCASE)
  if L2_2 == nil then
    return mp.CLEAN
  end
  if L2_2:sub(1, 8) == "\\device\\" then
    L2_2 = MpCommon.PathToWin32Path(L2_2)
  end
  L2_2 = string.lower(L2_2)
  AppendToRollingQueue("DroppedByPossibleRemotelyCreatedProc", L2_2, nil, 5000)
  return mp.INFECTED
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
