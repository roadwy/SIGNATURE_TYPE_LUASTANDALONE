local L0_0
L0_0 = pevars
L0_0 = L0_0.sigaddr
if pe.vm_search(L0_0, L0_0 + 144, "\129=\144\001\004\240I\002\000s\144\000", nil, pe.VM_SEARCH_BM) == 4294967295 then
  return mp.CLEAN
end
pe.mmap_patch_va(L0_0 + 52, "j\001\144")
pe.mmap_patch_va(pe.vm_search(L0_0, L0_0 + 144, "\129=\144\001\004\240I\002\000s\144\000", nil, pe.VM_SEARCH_BM) + 6, "\001\000\000")
return mp.INFECTED
