local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18
L0_0 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\TaskCache\\Tasks"
L1_1 = sysio
L1_1 = L1_1.RegOpenKey
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = false
if L1_1 then
  L3_3 = sysio
  L3_3 = L3_3.RegEnumKeys
  L3_3 = L3_3(L4_4)
  if L3_3 then
    for L7_7, L8_8 in L4_4(L5_5) do
      if L9_9 then
        if L10_10 ~= nil then
          if L11_11 ~= nil then
            L16_16 = true
            if L12_12 then
              if not L12_12 then
              elseif L12_12 then
                L12_12(L13_13, L14_14)
                L2_2 = true
              end
            end
          end
        end
      end
    end
  end
end
L3_3 = MpCommon
L3_3 = L3_3.ExpandEnvironmentVariables
L3_3 = L3_3(L4_4)
if L2_2 == true then
  for L10_10, L11_11 in L7_7(L8_8) do
    L13_13(L14_14)
  end
  for L11_11, L12_12 in L8_8(L9_9) do
    L16_16 = L13_13
    L14_14(L15_15)
  end
end
for L10_10, L11_11 in L7_7(L8_8) do
  L13_13(L14_14)
end
for L11_11, L12_12 in L8_8(L9_9) do
  L16_16 = L13_13
  L14_14(L15_15)
end
for L12_12, L13_13 in L9_9(L10_10) do
  L16_16 = L13_13.pid
  L16_16 = "ems://"
  L17_17 = L14_14
  L16_16 = L16_16 .. L17_17
  L15_15(L16_16)
end
for L13_13, L14_14 in L10_10(L11_11) do
  L16_16 = "pid:%d"
  L17_17 = L14_14.pid
  L16_16 = MpDetection
  L16_16 = L16_16.ScanResource
  L17_17 = "ems://"
  L18_18 = L15_15
  L17_17 = L17_17 .. L18_18
  L16_16(L17_17)
end
for L14_14, L15_15 in L11_11(L12_12) do
  L16_16 = string
  L16_16 = L16_16.format
  L17_17 = "pid:%d"
  L18_18 = L15_15.pid
  L16_16 = L16_16(L17_17, L18_18)
  L17_17 = MpDetection
  L17_17 = L17_17.ScanResource
  L18_18 = "ems://"
  L18_18 = L18_18 .. L16_16
  L17_17(L18_18)
end
for L15_15, L16_16 in L12_12(L13_13) do
  L17_17 = string
  L17_17 = L17_17.format
  L18_18 = "pid:%d"
  L17_17 = L17_17(L18_18, L16_16.pid)
  L18_18 = MpDetection
  L18_18 = L18_18.ScanResource
  L18_18("ems://" .. L17_17)
end
for L16_16, L17_17 in L13_13(L14_14) do
  L18_18 = string
  L18_18 = L18_18.format
  L18_18 = L18_18("pid:%d", L17_17.pid)
  MpDetection.ScanResource("ems://" .. L18_18)
end
