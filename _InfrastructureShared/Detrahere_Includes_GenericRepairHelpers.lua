local L0_0, L1_1, L2_2
L0_0 = MpDetection
L0_0 = L0_0.GetCurrentThreat
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0.Name
L1_1 = L1_1(L2_2, "Detrahere", 1, true)
if L1_1 then
  L1_1 = MpCommon
  L1_1 = L1_1.ExpandEnvironmentVariables
  L2_2 = "%windir%"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L2_2 = L1_1
    L2_2 = L2_2 .. "\\system32"
    if sysio.IsFolderExists(L2_2) then
      MpDetection.ScanResource("folder://" .. L2_2)
    end
  end
end
