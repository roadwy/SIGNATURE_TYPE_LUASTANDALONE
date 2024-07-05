local L0_0, L1_1, L2_2, L3_3
L0_0 = MpDetection
L0_0 = L0_0.ScanResource
L1_1 = "rootcert://"
L0_0(L1_1)
L0_0 = MpDetection
L0_0 = L0_0.ScanResource
L1_1 = "rootcertuser://"
L0_0(L1_1)
L0_0 = MpDetection
L0_0 = L0_0.GetCurrentThreat
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0.Name
L3_3 = "Program:Win32/CompromisedCert.C"
L1_1 = L1_1(L2_2, L3_3, 1, true)
if L1_1 then
  L1_1 = MpCommon
  L1_1 = L1_1.ExpandEnvironmentVariables
  L2_2 = "%ProgramFiles%"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L2_2 = L1_1
    L3_3 = " (x86)\\Dell"
    L2_2 = L2_2 .. L3_3
    L3_3 = L1_1
    L3_3 = L3_3 .. "\\Dell"
    if sysio.IsFolderExists(L2_2) then
      MpDetection.ScanResource("folder://" .. L2_2)
    end
    if sysio.IsFolderExists(L3_3) then
      MpDetection.ScanResource("folder://" .. L3_3)
    end
  end
end
