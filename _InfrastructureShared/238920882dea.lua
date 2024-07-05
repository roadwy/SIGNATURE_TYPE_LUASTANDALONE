local L0_0, L1_1
L0_0 = pe
L0_0 = L0_0.isvdllbase
L1_1 = pe
L1_1 = L1_1.get_regval
L1_1 = L1_1(pe.REG_EBX)
L0_0 = L0_0(L1_1, L1_1(pe.REG_EBX))
if L0_0 == false then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.bitand
L1_1 = pevars
L1_1 = L1_1.sigaddr
L1_1 = L1_1 + 13
L1_1 = L1_1 + mp.readu_u32(pe.mmap_va_nofastfail(pevars.sigaddr + 9, 4), 1)
L0_0 = L0_0(L1_1, 4294967295)
L1_1 = pe
L1_1 = L1_1.mmap_va_nofastfail
L1_1 = L1_1(L0_0, 16)
if string.byte(L1_1, 1) ~= 3 or string.byte(L1_1, 2) ~= 131 then
  return mp.CLEAN
end
if string.byte(L1_1, 7) == 135 then
  if string.byte(L1_1, 8) ~= 210 or string.byte(L1_1, 9) ~= 233 then
    return mp.CLEAN
  end
elseif string.byte(L1_1, 7) == 81 then
  if string.byte(L1_1, 8) ~= 141 or string.byte(L1_1, 9) ~= 13 or string.byte(L1_1, 14) ~= 135 or string.byte(L1_1, 15) ~= 12 then
    return mp.CLEAN
  end
else
  return mp.CLEAN
end
pe.mmap_patch_va(pevars.sigaddr + 2, "d\000\000\000")
pe.mmap_patch_va(L0_0 + 2, "`\000\000\000")
mp.set_mpattribute("FOPEX:Deep_Analysis_Disable_APILimit")
return mp.INFECTED
