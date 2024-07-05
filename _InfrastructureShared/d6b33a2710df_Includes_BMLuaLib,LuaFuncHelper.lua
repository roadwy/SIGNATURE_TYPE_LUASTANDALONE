local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = {L1_1, L2_2}
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.utf8p2
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.utf8p2
L1_1 = {L2_2, L3_3}
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.utf8p2
L3_3 = this_sigattrlog
L3_3 = L3_3[5]
L3_3 = L3_3.utf8p2
L2_2 = 0
L3_3 = "CobaltStrike"
for L7_7, L8_8 in L4_4(L5_5) do
  if L8_8 then
    L9_9 = StringEndsWith
    L9_9 = L9_9(L8_8, "vavadmmfname:")
    if L9_9 then
      L9_9 = in_array
      L9_9 = L9_9(L1_1, L8_8)
      if L9_9 then
        L9_9 = bm
        L9_9 = L9_9.add_related_string
        L9_9(string.format("ddb49deb_%s_Mask_%d", L3_3, L7_7), L8_8, bm.RelatedStringBMReport)
        L2_2 = L2_2 + 1
        L9_9 = string
        L9_9 = L9_9.gsub
        L9_9 = L9_9(L8_8, ";.+", "")
        if L9_9 then
          TriggerTargetedMemoryScan(L9_9)
          AddSuspiciousRegion(L9_9)
        end
      end
    end
  end
end
if L2_2 >= 2 then
  L4_4(L5_5, L6_6)
end
return L4_4
