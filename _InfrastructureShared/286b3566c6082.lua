local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 then
  L1_1 = L0_0.integrity_level
  L2_2 = MpCommon
  L2_2 = L2_2.SECURITY_MANDATORY_SYSTEM_RID
  if L1_1 < L2_2 then
    L1_1 = bm
    L1_1 = L1_1.get_imagepath
    L1_1 = L1_1()
    if not L1_1 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = L1_1
    L4_4 = "\\$windows.~bt\\sources\\"
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = {}
    L2_2["bcdboot.exe"] = true
    L2_2["bfsvc.exe"] = true
    L2_2["windows10upgraderapp.exe"] = true
    L2_2["tiworker.exe"] = true
    L3_3 = string
    L3_3 = L3_3.match
    L4_4 = L1_1
    L3_3 = L3_3(L4_4, "([^\\]+)$")
    if L3_3 then
      L4_4 = L2_2[L3_3]
      if not L4_4 then
        L4_4 = nil
        if this_sigattrlog[2].matched then
          L4_4 = this_sigattrlog[2].utf8p1
        elseif this_sigattrlog[1].matched then
          L4_4 = this_sigattrlog[1].utf8p1
        end
        if not L4_4 then
          return mp.CLEAN
        end
        if L4_4 and not mp.IsKnownFriendlyFile(L4_4, false, true) then
          mp.ReportLowfi(L4_4, 676571687)
        end
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
