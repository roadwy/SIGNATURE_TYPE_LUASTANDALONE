local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
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
  L2_2 = L0_0 + 9
  L1_1 = L1_1(L2_2)
  if L1_1 == false then
    L1_1 = pe
    L1_1 = L1_1.isencrypted_va
    L2_2 = L0_0 + 10
    L1_1 = L1_1(L2_2)
    if L1_1 == false then
      L1_1 = pe
      L1_1 = L1_1.isencrypted_va
      L2_2 = L0_0 + 11
      L1_1 = L1_1(L2_2)
      if L1_1 == false then
        L1_1 = pe
        L1_1 = L1_1.isencrypted_va
        L2_2 = L0_0 + 12
        L1_1 = L1_1(L2_2)
        if L1_1 == false then
          L1_1 = pe
          L1_1 = L1_1.foffset_va
          L2_2 = L0_0
          L1_1 = L1_1(L2_2)
          if L1_1 ~= 4294967295 then
            L2_2 = mp
            L2_2 = L2_2.readprotection
            L3_3 = false
            L2_2(L3_3)
            L2_2 = mp
            L2_2 = L2_2.readfile
            L3_3 = 0
            L4_4 = mp
            L4_4 = L4_4.getfilesize
            L10_10 = L4_4()
            L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L4_4())
            L3_3 = mp
            L3_3 = L3_3.writeu_u16
            L4_4 = L2_2
            L5_5 = L1_1 + 6
            L6_6 = 5867
            L3_3(L4_4, L5_5, L6_6)
            L3_3 = mp
            L3_3 = L3_3.readu_u32
            L4_4 = L2_2
            L5_5 = 61
            L3_3 = L3_3(L4_4, L5_5)
            L4_4 = mp
            L4_4 = L4_4.readu_u32
            L5_5 = L2_2
            L6_6 = L3_3 + 41
            L4_4 = L4_4(L5_5, L6_6)
            L5_5 = pe
            L5_5 = L5_5.foffset_va
            L6_6 = pehdr
            L6_6 = L6_6.ImageBase
            L6_6 = L4_4 + L6_6
            L5_5 = L5_5(L6_6)
            L6_6 = mp
            L6_6 = L6_6.readfile
            L7_7 = L5_5
            L8_8 = 32
            L6_6 = L6_6(L7_7, L8_8)
            L7_7 = string
            L7_7 = L7_7.find
            L8_8 = L6_6
            L9_9 = "`h"
            L10_10 = 1
            L7_7 = L7_7(L8_8, L9_9, L10_10, true)
            if L7_7 ~= nil then
              L8_8 = mp
              L8_8 = L8_8.readu_u32
              L9_9 = L2_2
              L10_10 = L5_5 + L7_7
              L10_10 = L10_10 + 2
              L8_8 = L8_8(L9_9, L10_10)
              L9_9 = pe
              L9_9 = L9_9.foffset_va
              L10_10 = L8_8
              L9_9 = L9_9(L10_10)
              L10_10 = mp
              L10_10 = L10_10.readfile
              L10_10 = L10_10(L9_9, 64)
              if string.find(L10_10, "NP_Initialize", 1, true) ~= nil then
                mp.writeu_u32(L2_2, L9_9 + 1, 1836544110)
                mp.writeu_u32(L2_2, L9_9 + 5, 1836213363)
                mp.writeu_u32(L2_2, L9_9 + 9, 0)
              end
            end
            L8_8 = mp
            L8_8 = L8_8.readu_u32
            L9_9 = L6_6
            L10_10 = 1
            L8_8 = L8_8(L9_9, L10_10)
            if L8_8 == 360 then
              L8_8 = mp
              L8_8 = L8_8.readu_u32
              L9_9 = L6_6
              L10_10 = 4
              L8_8 = L8_8(L9_9, L10_10)
              if L8_8 == 369033216 then
                L8_8 = mp
                L8_8 = L8_8.readu_u32
                L9_9 = L6_6
                L10_10 = 12
                L8_8 = L8_8(L9_9, L10_10)
                if L8_8 == 2425393296 then
                  L8_8 = mp
                  L8_8 = L8_8.writeu_u32
                  L9_9 = L2_2
                  L10_10 = L3_3 + 41
                  L8_8(L9_9, L10_10, L4_4 + 11)
                end
              end
            else
              L8_8 = mp
              L8_8 = L8_8.readu_u32
              L9_9 = L6_6
              L10_10 = 1
              L8_8 = L8_8(L9_9, L10_10)
              if L8_8 == 2425393296 then
                L8_8 = mp
                L8_8 = L8_8.readu_u32
                L9_9 = L6_6
                L10_10 = 6
                L8_8 = L8_8(L9_9, L10_10)
                if L8_8 == 3093336208 then
                  L8_8 = mp
                  L8_8 = L8_8.writeu_u32
                  L9_9 = L2_2
                  L10_10 = L3_3 + 41
                  L8_8(L9_9, L10_10, L0_0 + 29 - pehdr.ImageBase)
                end
              end
            end
            L8_8 = mp
            L8_8 = L8_8.vfo_add_buffer
            L9_9 = L2_2
            L10_10 = "[Obfuscator]"
            L8_8(L9_9, L10_10, mp.ADD_VFO_TAKE_ACTION_ON_DAD)
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.LOWFI
return L1_1
