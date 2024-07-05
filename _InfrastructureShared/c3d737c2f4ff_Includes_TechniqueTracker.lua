local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.GetScannedPPID
L1_1 = L1_1()
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L2_2 = L2_2(L1_1)
if not string.match(L2_2, "%Wpassword[%W$]") and not string.match(L2_2, "%Wpass[%W$]") and not string.match(L2_2, "%Wpw[%W$]") and not string.match(L2_2, "%Wkey[%W$]") and not string.match(L2_2, "%W-p[%W$]") and not string.match(L2_2, "%Wuser[%W$]") and not string.match(L2_2, "%Wcredentials[%W$]") and not string.match(L2_2, "%Wmysql[%W$]") and not string.match(L2_2, "%Wtelnet[%W$]") and not string.match(L2_2, "%Wssh[%W$]") and not string.match(L2_2, "%Wroot[%W$]") or L0_0 == nil then
  return mp.CLEAN
end
TrackPidAndTechnique(L0_0.ppid, "T1552.001", "CredentialAccess_BashHistoryCredentials")
return mp.LOWFI
