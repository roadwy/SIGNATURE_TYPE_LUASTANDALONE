local L0_0, L1_1, L2_2
L0_0 = {}
L1_1 = MpDetection
L1_1 = L1_1.ScanResource
L2_2 = "rootcertuser://"
L1_1(L2_2)
L1_1 = pcall
L2_2 = Infrastructure_ScanBedep
L2_2 = L1_1(L2_2)
if not L1_1 then
  L0_0.ScanBedep = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_RetliftenScan)
if not L1_1 then
  L0_0.RetliftenScan = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_AsrLinkScan, "qscanuser")
if not L1_1 then
  L0_0.RetliftenScan = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
L1_1, L2_2 = pcall(Infrastructure_ScanEFISystemPartitions)
if not L1_1 then
  L0_0.ScanEFISystemPartitions = L2_2
  if L2_2 == "Scanning aborted by the user!" then
    error(MpCommon.JsonSerialize(L0_0))
  end
end
if next(L0_0) ~= nil then
  error(MpCommon.JsonSerialize(L0_0))
end
