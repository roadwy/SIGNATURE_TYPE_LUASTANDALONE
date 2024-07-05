local L0_0, L1_1, L2_2, L3_3
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 == true then
  L0_0 = peattributes
  L0_0 = L0_0.hasexports
  if L0_0 == true then
    L0_0 = pehdr
    L0_0 = L0_0.DataDirectory
    L0_0 = L0_0[1]
    L0_0 = L0_0.Size
    if L0_0 ~= 0 then
      L0_0 = pehdr
      L0_0 = L0_0.DataDirectory
      L0_0 = L0_0[1]
      L0_0 = L0_0.RVA
      L1_1 = mp
      L1_1 = L1_1.readprotection
      L2_2 = false
      L1_1(L2_2)
      L1_1 = mp
      L1_1 = L1_1.readfile
      L2_2 = pe
      L2_2 = L2_2.foffset_rva
      L3_3 = L0_0
      L2_2 = L2_2(L3_3)
      L3_3 = 36
      L1_1 = L1_1(L2_2, L3_3)
      L2_2 = mp
      L2_2 = L2_2.readu_u32
      L3_3 = L1_1
      L2_2 = L2_2(L3_3, 21)
      if L2_2 == 1 then
        L2_2 = mp
        L2_2 = L2_2.readu_u32
        L3_3 = L1_1
        L2_2 = L2_2(L3_3, 25)
        if L2_2 == 1 then
          L2_2 = mp
          L2_2 = L2_2.readu_u32
          L3_3 = L1_1
          L2_2 = L2_2(L3_3, 33)
          L3_3 = pe
          L3_3 = L3_3.mmap_rva
          L3_3 = L3_3(L2_2, 4)
          L1_1 = L3_3
          L3_3 = mp
          L3_3 = L3_3.readu_u32
          L3_3 = L3_3(L1_1, 1)
          if pe.mmap_rva(L3_3, 9) == "plg_init\000" then
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
