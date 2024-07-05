local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.VA
L0_0 = L0_0 + 24
L1_1 = pe
L1_1 = L1_1.isdynamic_va
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = peattributes
  L1_1 = L1_1.isexe
  if L1_1 then
    L1_1 = pehdr
    L1_1 = L1_1.NumberOfSections
    if L1_1 < 5 then
      L1_1 = pe
      L1_1 = L1_1.foffset_va
      L1_1 = L1_1(L2_2)
      for L5_5 = 1, L3_3.NumberOfSections do
        L6_6 = pe
        L6_6 = L6_6.contains_va
        L7_7 = L5_5
        L6_6 = L6_6(L7_7, L0_0)
        if L6_6 then
          L6_6 = pesecs
          L6_6 = L6_6[L5_5]
          L6_6 = L6_6.PointerToRawData
          L6_6 = L1_1 - L6_6
          if L6_6 < 512 or L6_6 > 4000000 then
            L7_7 = mp
            L7_7 = L7_7.CLEAN
            return L7_7
          end
          L7_7 = mp
          L7_7 = L7_7.readprotection
          L7_7(false)
          L7_7 = mp
          L7_7 = L7_7.readfile
          L7_7 = L7_7(L1_1 - L6_6, L6_6)
          mp.vfo_add_buffer(string.reverse(L7_7), "[b64mz_reverse]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
          return mp.CLEAN
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.LOWFI
return L1_1
