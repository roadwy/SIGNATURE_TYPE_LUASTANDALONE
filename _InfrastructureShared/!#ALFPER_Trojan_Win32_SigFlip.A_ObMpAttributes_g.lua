local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_mpattributevalue
L1_1 = "RPF:MpCertStart"
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.get_mpattributevalue
L2_2 = "RPF:MpSeqCertSz"
L1_1 = L1_1(L2_2)
L2_2 = L0_0 + L1_1
L2_2 = L2_2 + 8
L2_2 = L2_2 + 2
L2_2 = L2_2 + 4
L3_3 = L2_2 % 8
L3_3 = L2_2 - L3_3
L4_4 = "\254\237\250\206\254\237\250\206"
L5_5 = mp
L5_5 = L5_5.readprotection
L5_5(false)
L5_5 = mp
L5_5 = L5_5.readfile
L5_5 = L5_5(L3_3, 32)
mp.readprotection(true)
if tostring(L5_5):find(L4_4, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
