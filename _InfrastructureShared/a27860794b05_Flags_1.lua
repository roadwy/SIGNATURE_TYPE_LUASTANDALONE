local L0_0, L1_1, L2_2, L3_3
L0_0 = hstrlog
L0_0 = L0_0[3]
L0_0 = L0_0.matched
L1_1 = hstrlog
L1_1 = L1_1[4]
L1_1 = L1_1.matched
L2_2 = hstrlog
L2_2 = L2_2[5]
L2_2 = L2_2.matched
if L0_0 then
  L3_3 = 1
else
  L3_3 = L3_3 or 0
end
L3_3 = L3_3 + (L1_1 and 1 or 0)
L3_3 = L3_3 + (L2_2 and 1 or 0)
if L3_3 >= 2 then
  return mp.SUSPICIOUS
end
mp.set_mpattribute("HSTR:VirTool:Win32/Obfuscator.AFG")
return mp.CLEAN
