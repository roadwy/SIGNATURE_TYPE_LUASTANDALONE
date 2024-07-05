local L0_0, L1_1
function L0_0()
  local L0_2, L1_3, L2_4, L3_5, L4_6, L5_7, L6_8, L7_9
  L0_2 = {}
  L1_3 = "\\\\?\\HarddiskVolume%d\\EFI"
  L2_4 = 10
  for L6_8 = 1, L2_4 do
    L7_9 = L1_3.format
    L7_9 = L7_9(L1_3, L6_8)
    if sysio.IsFolderExists(L7_9) then
      L0_2[#L0_2 + 1] = L7_9
    end
  end
  return L0_2
end
Infrastructure_FindEFISystemPartitions = L0_0
function L0_0(A0_10)
  local L1_11, L2_12, L3_13, L4_14, L5_15, L6_16, L7_17, L8_18
  L1_11 = 2
  L2_12 = sysio
  L2_12 = L2_12.FindFiles
  L2_12 = L2_12(L3_13, L4_14, L5_15)
  for L6_16, L7_17 in L3_13(L4_14) do
    L8_18 = MpCommon
    L8_18 = L8_18.SetGlobalMpAttribute
    L8_18("UefiLuaBootloaderScan")
    L8_18 = MpDetection
    L8_18 = L8_18.ScanResource
    L8_18("file://" .. L7_17)
    L8_18 = MpCommon
    L8_18 = L8_18.DeleteGlobalMpAttribute
    L8_18("UefiLuaBootloaderScan")
  end
  for L7_17, L8_18 in L4_14(L5_15) do
    MpCommon.SetGlobalMpAttribute("UefiLuaGrubCfgScan")
    MpDetection.ScanResource("file://" .. L8_18)
    MpCommon.DeleteGlobalMpAttribute("UefiLuaGrubCfgScan")
  end
end
ScanEFIBootloaders = L0_0
function L0_0()
  local L0_19, L1_20, L2_21, L3_22, L4_23, L5_24
  L0_19 = Infrastructure_FindEFISystemPartitions
  L0_19 = L0_19()
  for L4_23, L5_24 in L1_20(L2_21) do
    ScanEFIBootloaders(L5_24)
  end
end
Infrastructure_ScanEFISystemPartitions = L0_0
