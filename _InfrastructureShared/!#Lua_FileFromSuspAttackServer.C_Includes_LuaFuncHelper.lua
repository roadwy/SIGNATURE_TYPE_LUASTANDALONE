local L0_0, L1_1, L2_2, L3_3
L0_0 = pcall
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_REMOTE_SESSION_IP
L1_1 = L0_0(L1_1, L2_2)
if L0_0 and L1_1 and L1_1 ~= "" then
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_PROCESS_PPID
  L2_2 = L2_2(L3_3)
  if not L2_2 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.getfilename
  L3_3 = L3_3(mp.FILEPATH_QUERY_LOWERCASE)
  if not L3_3 or L3_3 == "" then
    return mp.CLEAN
  end
  if L3_3:sub(1, 8) == "\\device\\" then
    L3_3 = MpCommon.PathToWin32Path(L3_3)
    if L3_3 then
      L3_3 = L3_3:lower()
    else
      return mp.CLEAN
    end
  end
  TrackPidAndTechnique(L2_2, "T1057", "remotesrcip_" .. L1_1)
  if IsHostAttackServer(L1_1) then
    mp.set_mpattribute("Lua:FileFromAttackerServer")
    TT_SendBMSigTrigger(L2_2, "file_from_attackerserver", "scenario:smbdrop_from_attackerserver;filepath:" .. L3_3)
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
