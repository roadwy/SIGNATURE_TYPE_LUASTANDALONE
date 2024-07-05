local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SIGATTR:AntiEmuRaceThread"
L0_0 = L0_0(L1_1)
if L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.matched
  if L0_0 then
    L0_0 = 0
    L1_1 = mp
    L1_1 = L1_1.hstr_full_log
    L1_1 = L1_1()
    for L5_5, L6_6 in L2_2(L3_3) do
      if L6_6.matched and L5_5 ~= "filter1" then
        L0_0 = L6_6.VA
      end
    end
    if L0_0 == 0 then
      return L2_2
    end
    if L2_2 < 48 and L2_2 > -48 then
      return L3_3
    end
    L5_5 = pehdr
    L5_5 = L5_5.ImageBase
    L5_5 = 16
    L5_5 = L3_3
    L6_6 = 1
    L5_5 = mp
    L5_5 = L5_5.bitand
    L6_6 = L4_4
    L5_5 = L5_5(L6_6, 16777215)
    if L5_5 ~= 15204458 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = pehdr
    L5_5 = L5_5.AddressOfEntryPoint
    L5_5 = L0_0 - L5_5
    L5_5 = L5_5 - 7
    L6_6 = pehdr
    L6_6 = L6_6.ImageBase
    L5_5 = L5_5 - L6_6
    L6_6 = mp
    L6_6 = L6_6.readprotection
    L6_6(false)
    L6_6 = mp
    L6_6 = L6_6.readfile
    L6_6 = L6_6(0, mp.getfilesize())
    mp.writeu_u32(L6_6, pe.foffset_rva(pehdr.AddressOfEntryPoint + 1), 15326001)
    mp.writeu_u32(L6_6, pe.foffset_rva(pehdr.AddressOfEntryPoint + 4), L5_5)
    mp.vfo_add_buffer(L6_6, "[Obfuscator.AKH0]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    mp.set_mpattribute("HSTR:PatchAntiEmuRaceThread")
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
