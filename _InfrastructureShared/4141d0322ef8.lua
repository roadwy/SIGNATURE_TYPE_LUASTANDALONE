local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = "unk"
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L0_0 = "warn"
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[3]
  L1_1 = L1_1.matched
  if L1_1 then
    L0_0 = "block"
  end
end
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p1
L2_2 = ":"
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.np2
L1_1 = L1_1 .. L2_2 .. L3_3
L2_2 = {}
L2_2.SIG_CONTEXT = "NP:COCO:100"
L2_2.CONTENT_SOURCE = "NP"
L2_2.NP_LEVEL = L0_0
L2_2.C2 = "true"
L3_3 = mp
L3_3 = L3_3.GetUrlReputation
L4_4 = {L5_5}
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= nil then
  L4_4 = L3_3.urls
  for L8_8, L9_9 in L5_5(L6_6) do
    L10_10 = L9_9.determination
    if L10_10 == 2 then
      L10_10 = L9_9.confidence
      if L10_10 > 90 then
        L10_10 = L9_9.urlresponsecontext
        L10_10 = L10_10.family
        if L10_10 then
          L10_10 = {}
          L10_10[1] = 805306694
          L10_10[2] = 805306695
          L10_10[3] = 805306694
          L11_11 = L9_9.urlresponsecontext
          L11_11 = L11_11.family
          L11_11 = L10_10[L11_11]
          if L11_11 then
            mp.changedetectionname(L11_11)
          end
        end
        L10_10 = mp
        L10_10 = L10_10.INFECTED
        return L10_10
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
