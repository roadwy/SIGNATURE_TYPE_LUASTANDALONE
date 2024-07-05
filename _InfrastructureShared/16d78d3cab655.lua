local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = peattributes
L0_0 = L0_0.no_resources
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.HSTR_WEIGHT
  if L0_0 > 6 then
    L0_0 = nil
    L1_1 = mp
    L1_1 = L1_1.readprotection
    L2_2 = false
    L1_1(L2_2)
    L1_1 = 4294967295
    L2_2 = hstrlog
    L2_2 = L2_2[4]
    L2_2 = L2_2.matched
    if L2_2 then
      L2_2 = pe
      L2_2 = L2_2.foffset_va
      L3_3 = hstrlog
      L3_3 = L3_3[4]
      L3_3 = L3_3.VA
      L3_3 = L3_3 + 14
      L2_2 = L2_2(L3_3)
      L1_1 = L2_2
    else
      L2_2 = hstrlog
      L2_2 = L2_2[5]
      L2_2 = L2_2.matched
      if L2_2 then
        L2_2 = pe
        L2_2 = L2_2.foffset_va
        L3_3 = hstrlog
        L3_3 = L3_3[5]
        L3_3 = L3_3.VA
        L3_3 = L3_3 + 15
        L2_2 = L2_2(L3_3)
        L1_1 = L2_2
      else
        L2_2 = hstrlog
        L2_2 = L2_2[6]
        L2_2 = L2_2.matched
        if L2_2 then
          L2_2 = pe
          L2_2 = L2_2.foffset_va
          L3_3 = hstrlog
          L3_3 = L3_3[6]
          L3_3 = L3_3.VA
          L3_3 = L3_3 + 14
          L2_2 = L2_2(L3_3)
          L1_1 = L2_2
        else
          L2_2 = hstrlog
          L2_2 = L2_2[7]
          L2_2 = L2_2.matched
          if L2_2 then
            L2_2 = pe
            L2_2 = L2_2.foffset_va
            L3_3 = hstrlog
            L3_3 = L3_3[7]
            L3_3 = L3_3.VA
            L3_3 = L3_3 + 15
            L2_2 = L2_2(L3_3)
            L1_1 = L2_2
          end
        end
      end
    end
    if L1_1 ~= 4294967295 then
      L2_2 = mp
      L2_2 = L2_2.readfile
      L3_3 = L1_1
      L4_4 = 4
      L2_2 = L2_2(L3_3, L4_4)
      L0_0 = L2_2
    end
    if L0_0 ~= nil then
      L2_2 = mp
      L2_2 = L2_2.readu_u32
      L3_3 = L0_0
      L4_4 = 1
      L2_2 = L2_2(L3_3, L4_4)
      L3_3 = pe
      L3_3 = L3_3.foffset_va
      L4_4 = L2_2
      L3_3 = L3_3(L4_4)
      L1_1 = L3_3
      if L1_1 ~= 4294967295 then
        L3_3 = mp
        L3_3 = L3_3.readfile
        L4_4 = L1_1
        L5_5 = 4
        L3_3 = L3_3(L4_4, L5_5)
        L4_4 = mp
        L4_4 = L4_4.readu_u32
        L5_5 = L3_3
        L6_6 = 1
        L4_4 = L4_4(L5_5, L6_6)
        L5_5 = pe
        L5_5 = L5_5.foffset_va
        L6_6 = L4_4
        L5_5 = L5_5(L6_6)
        if L5_5 ~= 4294967295 then
          L6_6 = string
          L6_6 = L6_6.format
          L6_6 = L6_6("HSTR:Gamarue_RC4_password_at_%08X", L4_4)
          mp.set_mpattribute(L6_6)
        end
      end
    end
  end
  L0_0 = mp
  L0_0 = L0_0.set_mpattribute
  L1_1 = "HSTR:Gamarue_RC4DecryptionLowfi"
  L0_0(L1_1)
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
