local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L1_1 = pehdr
L1_1 = L1_1.ImageBase
L2_2 = pesecs
L2_2 = L2_2[1]
L2_2 = L2_2.VirtualAddress
L2_2 = L2_2 + L1_1
L2_2 = L2_2 + 4096
if not (L0_0 < L2_2) then
  L3_3 = L1_1 + 28672
elseif L0_0 > L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = pe
L3_3 = L3_3.VM_SEARCH_BM
L4_4 = pe
L4_4 = L4_4.vm_search
if L4_4(L2_2, L0_0, "\137\140\133\144\001\003\255\233\144\001\002\255\255\139\133\144\000", nil, L3_3) ~= 4294967295 then
  return mp.INFECTED
end
if L4_4(L2_2, L0_0, "\137L\133\144\001\001\233\144\001\002\255\255\139E\144\000", nil, L3_3) ~= 4294967295 then
  return mp.INFECTED
end
return mp.CLEAN
