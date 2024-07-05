local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.QuerySessionInformation
L2_2 = L0_0.ppid
L3_3 = MpCommon
L3_3 = L3_3.WTSIsRemoteSession
L1_1 = L1_1(L2_2, L3_3)
if L1_1 then
  L2_2 = MpCommon
  L2_2 = L2_2.QuerySessionInformation
  L3_3 = L0_0.ppid
  L2_2 = L2_2(L3_3, MpCommon.WTSUserName)
  L3_3 = MpCommon
  L3_3 = L3_3.QueryPersistContextNoPath
  L3_3 = L3_3("MpNewRemoteUsers", L2_2)
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L3_3 = L3_3.utf8p1
    if L3_3 then
      L3_3 = string.lower(L3_3)
      if string.find(L3_3, "vcredist_x64.exe", -16, true) or string.find(L3_3, "vcredist_x86.exe", -16, true) or string.find(L3_3, "GL.....%.tmp", -12) then
        return mp.CLEAN
      end
      if mp.IsKnownFriendlyFile(L3_3, false, false) then
        return mp.CLEAN
      end
    end
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
