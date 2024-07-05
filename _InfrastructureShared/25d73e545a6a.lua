local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L3_3 = L1_1
  L2_2 = L1_1.match
  L2_2 = L2_2(L3_3, "([^\\]+)$")
  if L2_2 == "sdclt.exe" then
    L2_2 = mp
    L2_2 = L2_2.GetScannedPPID
    L2_2 = L2_2()
    if L2_2 then
      L3_3 = {}
      table.insert(L3_3, L2_2)
      MpCommon.SetPersistContextNoPath("UACBypassExp.A!sdclt", L3_3, 5)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
