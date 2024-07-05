local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isdll
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pe
L0_0 = L0_0.set_peattribute
L1_1 = "disable_apicall_limit"
L0_0(L1_1, true)
L0_0 = pe
L0_0 = L0_0.set_peattribute
L1_1 = "deep_analysis"
L0_0(L1_1, true)
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(0, L0_0)
if hstrlog[1].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[1].VA) + 1, 1)
end
if hstrlog[2].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[2].VA) + 1, 1)
end
if hstrlog[3].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[3].VA) + 1, 1)
end
if hstrlog[4].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[4].VA) + 1, 1)
end
if hstrlog[5].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[5].VA) + 1, 1)
end
if hstrlog[6].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[6].VA) + 1, 1)
end
if hstrlog[7].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[7].VA) + 1, 1)
end
if hstrlog[8].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[8].VA) + 1, 1)
end
if hstrlog[9].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[9].VA) + 1, 1)
end
if hstrlog[10].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[10].VA) + 1, 1)
end
if hstrlog[11].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[11].VA) + 1, 1)
end
if hstrlog[12].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[12].VA) + 1, 1)
end
if hstrlog[13].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[13].VA) + 1, 1)
end
if hstrlog[14].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[14].VA - 1) + 1, 1)
end
if hstrlog[15].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[15].VA - 1) + 1, 1)
end
if hstrlog[16].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[16].VA - 1) + 1, 1)
end
if hstrlog[17].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[17].VA - 1) + 1, 1)
end
if hstrlog[18].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[18].VA - 1) + 1, 1)
end
if hstrlog[19].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[19].VA - 1) + 1, 1)
end
if hstrlog[20].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[20].VA - 1) + 1, 1)
end
if hstrlog[21].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[21].VA - 1) + 1, 1)
end
if hstrlog[22].matched then
  mp.writeu_u32(L1_1, pe.foffset_va(hstrlog[22].VA - 1) + 1, 1)
end
mp.vfo_add_buffer(L1_1, "[Obfuscator.ACV]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.SUSPICIOUS
