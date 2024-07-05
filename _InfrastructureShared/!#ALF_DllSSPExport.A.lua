local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.Machine
  if L0_0 == 332 then
    L0_0 = peattributes
    L0_0 = L0_0.hasexports
    if L0_0 then
      L0_0 = pehdr
      L0_0 = L0_0.DataDirectory
      L0_0 = L0_0[1]
      L0_0 = L0_0.Size
      if L0_0 ~= 0 then
        L0_0 = peattributes
        L0_0 = L0_0.isappcontainer
        if not L0_0 then
          L0_0 = peattributes
          L0_0 = L0_0.dmg_truncated
          if not L0_0 then
            L0_0 = mp
            L0_0 = L0_0.get_mpattribute
            L1_1 = "Clean:DllSSPExport"
            L0_0 = L0_0(L1_1)
            if not L0_0 then
              L0_0 = mp
              L0_0 = L0_0.getfilesize
              L0_0 = L0_0()
              if L0_0 < 10000 or L0_0 > 1000000 then
                L1_1 = mp
                L1_1 = L1_1.CLEAN
                return L1_1
              end
              L1_1 = pehdr
              L1_1 = L1_1.DataDirectory
              L1_1 = L1_1[1]
              L1_1 = L1_1.RVA
              L2_2 = mp
              L2_2 = L2_2.readprotection
              L3_3 = false
              L2_2(L3_3)
              L2_2 = mp
              L2_2 = L2_2.readfile
              L3_3 = pe
              L3_3 = L3_3.foffset_rva
              L4_4 = L1_1
              L3_3 = L3_3(L4_4)
              L4_4 = 36
              L2_2 = L2_2(L3_3, L4_4)
              L3_3 = mp
              L3_3 = L3_3.readu_u32
              L4_4 = L2_2
              L5_5 = 25
              L3_3 = L3_3(L4_4, L5_5)
              if L3_3 >= 4 and L3_3 <= 30 then
                L4_4 = mp
                L4_4 = L4_4.readu_u32
                L5_5 = L2_2
                L6_6 = 33
                L4_4 = L4_4(L5_5, L6_6)
                L5_5 = 20
                L6_6 = 0
                for L10_10 = 0, L3_3 - 1 do
                  L11_11 = L10_10 * 4
                  L11_11 = L4_4 + L11_11
                  L12_12 = pe
                  L12_12 = L12_12.mmap_rva
                  L12_12 = L12_12(L11_11, 4)
                  L2_2 = L12_12
                  L12_12 = mp
                  L12_12 = L12_12.readu_u32
                  L12_12 = L12_12(L2_2, 1)
                  if string.lower(string.format("%s", pe.mmap_rva(L12_12, L5_5))) == "spinitialize" then
                    L6_6 = mp.bitor(L6_6, 1)
                  elseif string.lower(string.format("%s", pe.mmap_rva(L12_12, L5_5))) == "spshutdown" then
                    L6_6 = mp.bitor(L6_6, 2)
                  elseif string.lower(string.format("%s", pe.mmap_rva(L12_12, L5_5))) == "spgetinfo" then
                    L6_6 = mp.bitor(L6_6, 4)
                  elseif string.lower(string.format("%s", pe.mmap_rva(L12_12, L5_5))) == "splsamodeinitialize" then
                    L6_6 = mp.bitor(L6_6, 8)
                  end
                  if L6_6 >= 15 then
                    return mp.INFECTED
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
