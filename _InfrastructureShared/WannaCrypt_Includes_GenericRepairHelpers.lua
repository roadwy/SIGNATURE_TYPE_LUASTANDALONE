local L0_0, L1_1
L0_0 = MpCommon
L0_0 = L0_0.ExpandEnvironmentVariables
L1_1 = "%SystemRoot%"
L0_0 = L0_0(L1_1)
L1_1 = MpCommon
L1_1 = L1_1.ExpandEnvironmentVariables
L1_1 = L1_1("%temp%")
if L0_0 then
  MpDetection.ScanResource("folder://" .. L0_0 .. "\\intel")
end
if L1_1 then
  MpDetection.ScanResource("folder://" .. L1_1)
end
