local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.mmap_patch_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 3
L0_0(L1_1, "\144\144")
L0_0 = pe
L0_0 = L0_0.mmap_patch_va
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 8
L0_0(L1_1, "\235")
L0_0 = mp
L0_0 = L0_0.set_mpattribute
L1_1 = "FOPEX:Deep_Analysis_Disable_APILimit"
L0_0(L1_1)
L0_0 = 512
L1_1 = pe
L1_1 = L1_1.mmap_va
L1_1 = L1_1(pevars.sigaddr - 256, L0_0)
if string.find(L1_1, "@B\015%z") and string.find(L1_1, "`\174\n%z") and string.find(L1_1, "h\132\003%z%z") then
  for _FORV_8_ = 1, 160 do
    if pe.mmap_va(pevars.sigaddr + _FORV_8_ + string.find(L1_1, "`\174\n%z") - 256, 1) == "\232" then
      pe.mmap_patch_va(pevars.sigaddr + _FORV_8_ + string.find(L1_1, "`\174\n%z") - 256, "\144\144\144\144\144")
    end
  end
end
return _FOR_.INFECTED
