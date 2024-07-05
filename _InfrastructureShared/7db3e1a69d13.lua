local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 100000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = bm
L0_0 = L0_0.get_process_relationships
L1_1 = L0_0()
for L5_5, L6_6 in L2_2(L3_3) do
  L7_7 = string
  L7_7 = L7_7.find
  L8_8 = string
  L8_8 = L8_8.lower
  L9_9 = L6_6.image_path
  L8_8 = L8_8(L9_9)
  L9_9 = "\\rundll32.exe"
  L10_10 = 1
  L11_11 = true
  L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11)
  if L7_7 then
    L7_7 = MpCommon
    L7_7 = L7_7.TurnNriOnProcess
    L8_8 = L6_6.ppid
    L7_7(L8_8)
    L7_7 = bm
    L7_7 = L7_7.request_SMS
    L8_8 = L6_6.ppid
    L9_9 = "M"
    L7_7(L8_8, L9_9)
    L7_7 = string
    L7_7 = L7_7.match
    L8_8 = L6_6.ppid
    L9_9 = "^pid:(%w+),ProcessStart:(%w+)$"
    L8_8 = L7_7(L8_8, L9_9)
    L9_9 = tonumber
    L10_10 = L7_7
    L9_9 = L9_9(L10_10)
    L10_10 = tonumber
    L11_11 = L8_8
    L10_10 = L10_10(L11_11)
    L11_11 = mp
    L11_11 = L11_11.bsplit
    L12_12 = L10_10
    L13_13 = 32
    L12_12 = L11_11(L12_12, L13_13)
    L13_13 = string
    L13_13 = L13_13.format
    L13_13 = L13_13("ppids:{{%d,%d,%d}}\000", L9_9, L11_11, L12_12)
    mp.TriggerScanResource("ems", L13_13, mp.SCANSOURCE_RTSIG, 5000)
    return mp.INFECTED
  end
end
return L2_2
