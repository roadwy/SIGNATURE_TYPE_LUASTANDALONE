local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = 8957006
L1_1 = true
L2_2 = sysio
L2_2 = L2_2.GetLogicalDrivesMask
L2_2 = L2_2()
L3_3 = {
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8,
  "F:",
  "G:",
  "H:",
  "I:",
  "J:",
  "K:",
  "L:",
  "M:",
  "N:",
  "O:",
  "P:",
  "Q:",
  "R:",
  "S:",
  "T:",
  "U:",
  "V:",
  "W:",
  "X:",
  "Y:",
  "Z:"
}
L7_7 = "D:"
L8_8 = "E:"
for L7_7, L8_8 in L4_4(L5_5) do
  if mp.bitand(mp.shl32(1, L7_7 - 1), L2_2) ~= 0 and sysio.GetFileFsVolumeInformation(L8_8) ~= nil and sysio.GetFileFsVolumeInformation(L8_8).VolumeSerialNumber ~= nil and sysio.GetFileFsVolumeInformation(L8_8).VolumeSerialNumber == L0_0 then
    L1_1 = false
  end
end
if L1_1 then
  return L4_4
end
return L4_4
