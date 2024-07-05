local L0_0, L1_1, L2_2, L3_3
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L1_1 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\ICM\\Calibration"
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = sysio
  L1_1 = L1_1.GetRegValueAsString
  L2_2 = L0_0
  L3_3 = "DisplayCalibrator"
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 then
    L2_2 = string
    L2_2 = L2_2.len
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    if L2_2 < 4 then
      L2_2 = string
      L2_2 = L2_2.lower
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
      if L2_2 ~= "cmd" then
        L2_2 = mp
        L2_2 = L2_2.CLEAN
        return L2_2
      end
    end
    L2_2 = string
    L2_2 = L2_2.find
    L3_3 = string
    L3_3 = L3_3.lower
    L3_3 = L3_3(L1_1)
    L2_2 = L2_2(L3_3, "\\dccw.exe", 1, true)
    if L2_2 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = set_research_data
    L3_3 = "DefaultValue"
    L2_2(L3_3, L1_1, false)
    L2_2 = mp
    L2_2 = L2_2.GetScannedPPID
    L2_2 = L2_2()
    L3_3 = {}
    table.insert(L3_3, L2_2)
    MpCommon.SetPersistContextNoPath("UACBypassRegSet.B", L3_3, 3)
    mp.set_mpattribute("MpDisableCaching")
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
