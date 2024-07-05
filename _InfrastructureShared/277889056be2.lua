local L0_0, L1_1, L2_2
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L1_1 = pe
L1_1 = L1_1.isdynamic_va
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == false then
  L1_1 = pe
  L1_1 = L1_1.isencrypted_va
  L2_2 = L0_0 + 7
  L1_1 = L1_1(L2_2)
  if L1_1 == false then
    L1_1 = pe
    L1_1 = L1_1.isencrypted_va
    L2_2 = L0_0 + 8
    L1_1 = L1_1(L2_2)
    if L1_1 == false then
      L1_1 = pe
      L1_1 = L1_1.foffset_va
      L2_2 = L0_0
      L1_1 = L1_1(L2_2)
      if L1_1 ~= 4294967295 then
        L2_2 = mp
        L2_2 = L2_2.readprotection
        L2_2(false)
        L2_2 = mp
        L2_2 = L2_2.readfile
        L2_2 = L2_2(0, mp.getfilesize())
        mp.writeu_u16(L2_2, L1_1 + 8, 2027)
        mp.vfo_add_buffer(L2_2, "[Obfuscator]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.LOWFI
return L1_1
