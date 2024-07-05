local L0_0, L1_1, L2_2
L0_0 = pevars
L0_0 = L0_0.sigaddr
L1_1 = 256
L2_2 = pe
L2_2 = L2_2.mmap_va
L2_2 = L2_2(L0_0, L1_1)
if string.find(L2_2, "h\132\003%z%z") > 0 and string.find(L2_2, "`\174\n%z") > 0 then
  pe.mmap_patch_va(L0_0 + 6, "\144\144")
  pe.mmap_patch_va(L0_0 + 14, "\235")
  for _FORV_8_ = 1, 192 do
    if pe.mmap_va(L0_0 + _FORV_8_ + 64, 3) == "\000\255\021" then
      pe.mmap_patch_va(L0_0 + _FORV_8_ + 65, "\144\144\144\144\144\144")
    end
  end
  _FOR_.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
  return mp.INFECTED
end
return mp.CLEAN
