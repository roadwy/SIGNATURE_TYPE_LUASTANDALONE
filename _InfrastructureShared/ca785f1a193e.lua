local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = peattributes
L0_0 = L0_0.isvbpcode
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.hasappendeddata
  if not L0_0 then
    L0_0 = pesecs
    L1_1 = pehdr
    L1_1 = L1_1.NumberOfSections
    L0_0 = L0_0[L1_1]
    L0_0 = L0_0.SizeOfRawData
  elseif L0_0 > 24576 then
    function L0_0(A0_13)
      local L1_14, L2_15
      L1_14 = string
      L1_14 = L1_14.find
      L2_15 = A0_13
      L2_15 = L1_14(L2_15, "[\002-\t]+")
      if L1_14 ~= nil and L2_15 - L1_14 > 16 then
        return 1
      end
      L1_14, L2_15 = string.find(A0_13, "^%z%z%z%z+")
      if L1_14 ~= nil and L2_15 - L1_14 > 160 then
        return 1
      end
      return 0
    end
    Check_Padding = L0_0
    L0_0 = mp
    L0_0 = L0_0.readprotection
    L1_1 = false
    L0_0(L1_1)
    L0_0 = pehdr
    L0_0 = L0_0.AddressOfEntryPoint
    L1_1 = pehdr
    L1_1 = L1_1.ImageBase
    L0_0 = L0_0 + L1_1
    L1_1 = mp
    L1_1 = L1_1.readu_u32
    L2_2 = pe
    L2_2 = L2_2.mmap_va
    L3_3 = L0_0
    L4_4 = 5
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = 2
    L1_1 = L1_1(L2_2, L3_3)
    L2_2 = mp
    L2_2 = L2_2.readu_u32
    L3_3 = pe
    L3_3 = L3_3.mmap_va
    L4_4 = L1_1
    L5_5 = 4
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    if L2_2 ~= 557138518 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.readu_u16
    L3_3 = pe
    L3_3 = L3_3.mmap_va
    L4_4 = L1_1 + 68
    L5_5 = 2
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = 1
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = mp
    L3_3 = L3_3.readu_u32
    L4_4 = pe
    L4_4 = L4_4.mmap_va
    L5_5 = L1_1 + 48
    L6_6 = 4
    L4_4 = L4_4(L5_5, L6_6)
    L5_5 = 1
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = mp
    L4_4 = L4_4.readu_u32
    L5_5 = pe
    L5_5 = L5_5.mmap_va
    L6_6 = L3_3 + 4
    L7_7 = 4
    L5_5 = L5_5(L6_6, L7_7)
    L6_6 = 1
    L4_4 = L4_4(L5_5, L6_6)
    L5_5 = mp
    L5_5 = L5_5.readu_u16
    L6_6 = pe
    L6_6 = L6_6.mmap_va
    L7_7 = L4_4 + 46
    L8_8 = 2
    L6_6 = L6_6(L7_7, L8_8)
    L7_7 = 1
    L5_5 = L5_5(L6_6, L7_7)
    L6_6 = L5_5 - L2_2
    if L6_6 ~= 7 then
      L6_6 = L5_5 - L2_2
    elseif L6_6 == 8 then
      L6_6 = mp
      L6_6 = L6_6.set_mpattribute
      L7_7 = "HSTR:VirTool:Win32/VBInject.gen!MJ"
      L6_6(L7_7)
      L6_6 = pesecs
      L7_7 = pehdr
      L7_7 = L7_7.NumberOfSections
      L6_6 = L6_6[L7_7]
      L6_6 = L6_6.PointerToRawData
      L7_7 = pesecs
      L8_8 = pehdr
      L8_8 = L8_8.NumberOfSections
      L7_7 = L7_7[L8_8]
      L7_7 = L7_7.SizeOfRawData
      L6_6 = L6_6 + L7_7
      L7_7 = pe
      L7_7 = L7_7.foffset_va
      L8_8 = pehdr
      L8_8 = L8_8.ImageBase
      L9_9 = pehdr
      L9_9 = L9_9.SizeOfImage
      L9_9 = L9_9 - 1
      L8_8 = L8_8 + L9_9
      L7_7 = L7_7(L8_8)
      L7_7 = L7_7 + 1
      if L6_6 ~= L7_7 then
        L6_6 = L7_7
      end
      L8_8 = mp
      L8_8 = L8_8.getfilesize
      L8_8 = L8_8()
      L8_8 = L8_8 - L6_6
      if L8_8 <= 0 then
        L9_9 = pesecs
        L9_9 = L9_9[1]
        L9_9 = L9_9.SizeOfRawData
        if not (L9_9 >= 69632) then
          L9_9 = pesecs
          L10_10 = pehdr
          L10_10 = L10_10.NumberOfSections
          L9_9 = L9_9[L10_10]
          L9_9 = L9_9.SizeOfRawData
        elseif L9_9 >= 65536 then
          L9_9 = pesecs
          L10_10 = pehdr
          L10_10 = L10_10.NumberOfSections
          L9_9 = L9_9[L10_10]
          L9_9 = L9_9.PointerToRawData
          L10_10 = mp
          L10_10 = L10_10.readfile
          L11_11 = L9_9
          L12_12 = 848
          L10_10 = L10_10(L11_11, L12_12)
          L11_11 = string
          L11_11 = L11_11.find
          L12_12 = L10_10
          L11_11 = L11_11(L12_12, "%d%z%d%z%d%z%d%z%d%z%d%z%d%z%.%ze%zx%ze")
          if L11_11 then
            L11_11 = mp
            L11_11 = L11_11.INFECTED
            return L11_11
          end
          L11_11 = mp
          L11_11 = L11_11.LOWFI
          return L11_11
        end
      end
      if L8_8 < 8192 then
        L9_9 = mp
        L9_9 = L9_9.CLEAN
        return L9_9
      end
      L9_9 = mp
      L9_9 = L9_9.readfile
      L10_10 = L6_6
      L11_11 = 224
      L9_9 = L9_9(L10_10, L11_11)
      L10_10 = string
      L10_10 = L10_10.find
      L11_11 = L9_9
      L12_12 = "%d+"
      L11_11 = L10_10(L11_11, L12_12)
      if L10_10 ~= nil then
        L12_12 = L11_11 - L10_10
        if L12_12 > 8 then
          L12_12 = mp
          L12_12 = L12_12.INFECTED
          return L12_12
        end
      end
      L12_12 = Check_Padding
      L12_12 = L12_12(L9_9)
      if L12_12 == 1 then
        L12_12 = 12112
        if L8_8 < L12_12 then
          L12_12 = L8_8 - 16
        end
        L9_9 = mp.readfile(L6_6, L12_12)
        L10_10, L11_11 = string.find(L9_9, "%d%d%d%d+")
        if L10_10 ~= nil and L11_11 - L10_10 > 8 then
          return mp.INFECTED
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.LOWFI
return L0_0
