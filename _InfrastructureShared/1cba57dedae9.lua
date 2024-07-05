local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = pe
L0_0 = L0_0.get_netmetadata
L0_0 = L0_0()
L1_1 = L0_0.usheap_RVA
L2_2 = L0_0.usheap_size
L3_3 = pehdr
L3_3 = L3_3.ImageBase
L3_3 = L1_1 + L3_3
L4_4 = pe
L4_4 = L4_4.vm_search
L5_5 = L3_3
L6_6 = L3_3 + 80
L7_7 = "\144\" \v0-9A-Za-z/+\144\000"
L4_4 = L4_4(L5_5, L6_6, L7_7, nil, pe.VM_SEARCH_BM)
if L4_4 == 4294967295 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = pe
L5_5 = L5_5.vm_search
L6_6 = L4_4 + 8
L7_7 = L4_4 + L2_2
L5_5 = L5_5(L6_6, L7_7, "\000\000\144\000", nil, pe.VM_SEARCH_BM)
if L5_5 == 4294967295 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = L5_5 - L4_4
L7_7 = mp
L7_7 = L7_7.readprotection
L7_7(false)
L7_7 = pe
L7_7 = L7_7.mmap_va
L7_7 = L7_7(L4_4, L6_6)
mp.vfo_add_buffer(L7_7, "[ldstr_msil]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
