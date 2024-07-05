local L0_0, L1_1, L2_2
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = pe
  L0_0 = L0_0.isdynamic_va
  L1_1 = pevars
  L1_1 = L1_1.sigaddr
  L0_0 = L0_0(L1_1)
  if L0_0 == false then
    L0_0 = pevars
    L0_0 = L0_0.sigaddr
    L0_0 = L0_0 + 7
    L1_1 = pevars
    L1_1 = L1_1.sigaddr
    L1_1 = L1_1 + 26
    L2_2 = pe
    L2_2 = L2_2.vm_search
    L2_2 = L2_2(L0_0, L1_1, "u\184+", nil, pe.VM_SEARCH_FOP)
    pe.mmap_patch_va(L2_2, "\144\144")
    pe.mmap_patch_va(L2_2 + 7, "\144\144")
    return mp.LOWFI
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
