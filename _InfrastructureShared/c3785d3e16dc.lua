local L0_0, L1_1, L2_2, L3_3
L0_0 = 56
L1_1 = hstrlog
L1_1 = L1_1[3]
L1_1 = L1_1.VA
L2_2 = hstrlog
L2_2 = L2_2[4]
L2_2 = L2_2.VA
L3_3 = mp
L3_3 = L3_3.bitor
L3_3 = L3_3(pehdr.ImageBase, L1_1)
L1_1 = L3_3
L3_3 = mp
L3_3 = L3_3.bitor
L3_3 = L3_3(pehdr.ImageBase, L2_2)
L2_2 = L3_3
L3_3 = pe
L3_3 = L3_3.contains_va
L3_3 = L3_3(1, L1_1)
if L3_3 then
  L3_3 = pe
  L3_3 = L3_3.contains_va
  L3_3 = L3_3(1, L2_2)
elseif not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.SUSPICIOUS
  return L3_3
end
L3_3 = "HSTR:VirTool:Win32/DelfInject.W.info_"
L3_3 = L3_3 .. string.format("%.08x", L1_1) .. "_" .. string.format("%.08x", L2_2 + L0_0)
mp.set_mpattribute(L3_3)
return mp.SUSPICIOUS
