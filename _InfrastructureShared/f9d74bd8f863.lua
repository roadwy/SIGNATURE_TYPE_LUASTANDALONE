local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = MpCommon
L0_0 = L0_0.GetPersistContextCountNoPath
L1_1 = "Lua:MpRequestEmsScan"
L0_0 = L0_0(L1_1)
if L0_0 > 0 then
  L0_0 = MpCommon
  L0_0 = L0_0.GetPersistContextNoPath
  L1_1 = "Lua:MpRequestEmsScan"
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L1_1 = mp
    L1_1 = L1_1.GetScannedPPID
    L1_1 = L1_1()
    if L1_1 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = MpCommon
    L2_2 = L2_2.GetImagePathFromPid
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    if L2_2 == nil then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L3_3 = MpCommon
    L3_3 = L3_3.PathToWin32Path
    L4_4 = L2_2
    L3_3 = L3_3(L4_4)
    if L3_3 == nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = string
    L4_4 = L4_4.lower
    L18_18 = L5_5(L6_6)
    L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L5_5(L6_6))
    if L4_4 == nil then
      return L5_5
    end
    L8_8 = 1
    L9_9 = true
    if not L5_5 then
      L8_8 = 1
      L9_9 = true
    elseif L5_5 then
      return L5_5
    end
    for L8_8, L9_9 in L5_5(L6_6) do
      L10_10 = string
      L10_10 = L10_10.match
      L11_11 = L9_9
      L12_12 = "^(%d%d%d+)_(.+)$"
      L11_11 = L10_10(L11_11, L12_12)
      if L10_10 ~= nil and L11_11 ~= nil then
        L12_12 = string
        L12_12 = L12_12.len
        L13_13 = L11_11
        L12_12 = L12_12(L13_13)
        if L12_12 > 7 then
          L12_12 = string
          L12_12 = L12_12.find
          L13_13 = string
          L13_13 = L13_13.lower
          L14_14 = L11_11
          L13_13 = L13_13(L14_14)
          L14_14 = string
          L14_14 = L14_14.lower
          L15_15 = L3_3
          L14_14 = L14_14(L15_15)
          L15_15 = 1
          L16_16 = true
          L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16)
          if L12_12 then
            L12_12 = string
            L12_12 = L12_12.match
            L13_13 = L1_1
            L14_14 = "^pid:(%w+),ProcessStart:(%w+)$"
            L13_13 = L12_12(L13_13, L14_14)
            L14_14 = tonumber
            L15_15 = L12_12
            L14_14 = L14_14(L15_15)
            L15_15 = tonumber
            L16_16 = L13_13
            L15_15 = L15_15(L16_16)
            L16_16 = mp
            L16_16 = L16_16.bsplit
            L17_17 = L15_15
            L18_18 = 32
            L17_17 = L16_16(L17_17, L18_18)
            L18_18 = string
            L18_18 = L18_18.format
            L18_18 = L18_18("ppids:{{%d,%d,%d}}\000", L14_14, L16_16, L17_17)
            mp.TriggerScanResource("ems", L18_18, mp.SCANSOURCE_RTSIG, L10_10)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
