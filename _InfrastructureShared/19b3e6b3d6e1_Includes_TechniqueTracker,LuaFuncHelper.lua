local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
L1_1 = split
L2_2 = L0_0
L3_3 = " "
L1_1 = L1_1(L2_2, L3_3)
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8
}
L3_3 = "telemetrydv1"
L7_7 = "dlpagent"
L8_8 = "tccd"
L3_3 = #L2_2
for L7_7 = 1, #L1_1 do
  L8_8 = tostring
  L9_9 = L1_1[L7_7]
  L8_8 = L8_8(L9_9)
  L9_9 = L8_8.gsub
  L9_9 = L9_9(L10_10, L11_11, L12_12)
  if L10_10 >= 3 then
    for L13_13 = 1, L3_3 do
      L14_14 = L2_2[L13_13]
      if string.find(L14_14, L9_9, 1, true) then
        TrackPidAndTechniqueBM("BM", "T1562.001", "DefenseEvasion-FriendlyPkill")
        return mp.INFECTED
      end
    end
  end
end
return L4_4
