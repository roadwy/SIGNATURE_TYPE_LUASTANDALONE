local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetMOTWHostUrl
L0_0 = L0_0()
if L0_0 ~= nil and L0_0 ~= "" then
  L2_2 = L0_0
  L1_1 = L0_0.lower
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_PROCESS_PPID
  L1_1 = L1_1(L2_2)
  if not L1_1 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L2_2 = L2_2(mp.FILEPATH_QUERY_LOWERCASE)
  if L2_2 == nil or L2_2 == "" then
    return mp.CLEAN
  end
  if L2_2:sub(1, 8) == "\\device\\" then
    L2_2 = MpCommon.PathToWin32Path(L2_2):lower()
  end
  TrackPidAndTechnique(L1_1, "T1057", "motwurl_" .. L0_0)
  if IsHostAttackServer(L0_0) then
    mp.set_mpattribute("Lua:FileFromAttackerServer")
    TT_SendBMSigTrigger(L1_1, "file_from_attackerserver", "scenario:has_motw_attackerurl;filepath:" .. L2_2)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
