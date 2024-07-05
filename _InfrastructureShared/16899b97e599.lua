local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "//HSTR:Necurs_Patched"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.getfilesize
  L0_0 = L0_0()
  if L0_0 < 180000 then
    L0_0 = pehdr
    L0_0 = L0_0.ImageBase
    L1_1 = mp
    L1_1 = L1_1.readu_u32
    L2_2 = pe
    L2_2 = L2_2.mmap_va
    L3_3 = pe
    L3_3 = L3_3.get_regval
    L3_3 = L3_3(pe.REG_ESP)
    L2_2 = L2_2(L3_3, 4)
    L3_3 = 1
    L1_1 = L1_1(L2_2, L3_3)
    L2_2 = pehdr
    L2_2 = L2_2.AddressOfEntryPoint
    L2_2 = L2_2 + 5
    L2_2 = L2_2 + L0_0
    if L1_1 == L2_2 then
      L1_1 = pesecs
      L1_1 = L1_1[1]
      L1_1 = L1_1.VirtualAddress
      L1_1 = L1_1 + L0_0
      L1_1 = L1_1 + 4096
      L2_2 = L1_1 + 1280
      L3_3 = 0
      L3_3 = pe.vm_search(L1_1, L2_2, "\255\255\139E\144\t\v\000\137L\133\144\001\001\233\144\000", nil, pe.VM_SEARCH_BM)
      if L3_3 ~= 4294967295 then
        pe.mmap_patch_va(L3_3 - 6, "D")
        mp.set_mpattribute("//HSTR:Necurs_Patched")
        return mp.INFECTED
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
