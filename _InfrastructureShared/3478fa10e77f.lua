local L0_0, L1_1
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "MpHasExpensiveLoop"
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L0_0 = pe
    L0_0 = L0_0.foffset_va
    L1_1 = hstrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.VA
    L0_0 = L0_0(L1_1)
    L1_1 = mp
    L1_1 = L1_1.readprotection
    L1_1(false)
    L1_1 = mp
    L1_1 = L1_1.readfile
    L1_1 = L1_1(0, mp.getfilesize())
    mp.writeu_u8(L1_1, L0_0 + 12, 132)
    mp.writeu_u32(L1_1, L0_0 + 20, 696)
    mp.writeu_u8(L1_1, L0_0 + 24, 0)
    mp.vfo_add_buffer(L1_1, "[Obfuscator.ALC]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
