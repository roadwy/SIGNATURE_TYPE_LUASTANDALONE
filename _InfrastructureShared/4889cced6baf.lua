local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 16777216 then
  L1_1 = mp
  L1_1 = L1_1.SUSPICIOUS
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = mp
L2_2 = L2_2.readu_u16
L3_3 = L1_1
L2_2 = L2_2(L3_3, 19)
if L2_2 == 20557 then
  L2_2 = mp
  L2_2 = L2_2.SUSPICIOUS
  return L2_2
else
  L2_2 = mp
  L2_2 = L2_2.writeu_u16
  L3_3 = L1_1
  L2_2(L3_3, 19, 20557)
end
L2_2 = pe
L2_2 = L2_2.mmap_va
L3_3 = pevars
L3_3 = L3_3.sigaddr
L2_2 = L2_2(L3_3, 256)
L3_3 = mp
L3_3 = L3_3.readu_u16
L3_3 = L3_3(L2_2, 52)
if L3_3 == 53503 then
  L3_3 = string
  L3_3 = L3_3.byte
  L3_3 = L3_3(L2_2, 68)
  if L3_3 == 116 then
    L3_3 = mp
    L3_3 = L3_3.writeu_u16
    L3_3(L1_1, pe.foffset_va(pevars.sigaddr) + 68, 37008)
  end
else
  L3_3 = mp
  L3_3 = L3_3.readu_u16
  L3_3 = L3_3(L2_2, 56)
  if L3_3 == 53503 then
    L3_3 = string
    L3_3 = L3_3.byte
    L3_3 = L3_3(L2_2, 74)
    if L3_3 == 116 then
      L3_3 = mp
      L3_3 = L3_3.writeu_u16
      L3_3(L1_1, pe.foffset_va(pevars.sigaddr) + 74, 37008)
    end
  else
    L3_3 = mp
    L3_3 = L3_3.readu_u16
    L3_3 = L3_3(L2_2, 58)
    if L3_3 == 53503 then
      L3_3 = string
      L3_3 = L3_3.byte
      L3_3 = L3_3(L2_2, 69)
      if L3_3 == 116 then
        L3_3 = mp
        L3_3 = L3_3.writeu_u16
        L3_3(L1_1, pe.foffset_va(pevars.sigaddr) + 69, 37008)
      end
    else
      L3_3 = mp
      L3_3 = L3_3.SUSPICIOUS
      return L3_3
    end
  end
end
L3_3 = doshdr
L3_3 = L3_3.e_lfanew
L3_3 = L3_3 + pehdr.SizeOfOptionalHeader
L3_3 = L3_3 + 61
for _FORV_7_ = 1, pehdr.NumberOfSections do
  mp.writeu_u32(L1_1, L3_3, mp.bitor(pesecs[_FORV_7_].Characteristics, 2147483648))
  L3_3 = L3_3 + 40
end
_FOR_.vfo_add_buffer(L1_1, "[Obfuscator.ACT]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.SUSPICIOUS
