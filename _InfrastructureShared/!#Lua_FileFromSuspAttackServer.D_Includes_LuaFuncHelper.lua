local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESS_PPID
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.getfilename
L1_1 = L1_1(mp.FILEPATH_QUERY_LOWERCASE)
if L1_1 == nil or L1_1 == "" then
  return mp.CLEAN
end
if string.sub(L1_1, 1, 12) == "\\device\\mup\\" then
  if L1_1:find("\\sysvol\\", 1, true) or L1_1:find("\\netlogon\\", 1, true) then
    return mp.CLEAN
  end
  L1_1 = MpCommon.PathToWin32Path(L1_1):lower()
  TrackPidAndTechnique(L0_0, "T1057", "remoteshare_" .. L1_1)
  if IsHostAttackServer(L1_1) then
    mp.set_mpattribute("Lua:FileFromAttackerServer")
    TT_SendBMSigTrigger(L0_0, "file_from_attackerserver", "scenario:open_from_attackershare;filepath:" .. L1_1)
    return mp.INFECTED
  end
end
return mp.CLEAN
