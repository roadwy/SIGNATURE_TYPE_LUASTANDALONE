local L0_0, L1_1
L0_0 = MpCommon
L0_0 = L0_0.IsSampled
L1_1 = 50000
L0_0 = L0_0(L1_1, true, true, true)
if L0_0 then
  L0_0 = bm
  L0_0 = L0_0.get_current_process_startup_info
  L0_0 = L0_0()
  if L0_0 then
    L1_1 = L0_0.integrity_level
    if L1_1 < MpCommon.SECURITY_MANDATORY_HIGH_RID then
      L1_1 = bm
      L1_1 = L1_1.get_imagepath
      L1_1 = L1_1()
      if L1_1 then
        L1_1 = MpCommon.PathToWin32Path(L1_1)
        if L1_1 and not mp.IsKnownFriendlyFile(L1_1, false, false) then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
