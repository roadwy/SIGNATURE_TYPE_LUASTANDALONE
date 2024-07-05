local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L1_1 = hstrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = hstrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.VA
  L0_0 = L1_1 - 16
else
  L1_1 = hstrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.VA
  L0_0 = L1_1 - 32
end
L1_1 = pe
L1_1 = L1_1.isdynamic_va
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = peattributes
  L1_1 = L1_1.isexe
  if not L1_1 then
    L1_1 = peattributes
    L1_1 = L1_1.ismsil
  elseif L1_1 then
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
        L8_8 = L0_0
        L6_6 = L6_6(L7_7, L8_8)
        if L6_6 then
          L6_6 = pesecs
          L6_6 = L6_6[L5_5]
          L6_6 = L6_6.SizeOfRawData
          L7_7 = pesecs
          L7_7 = L7_7[L5_5]
          L7_7 = L7_7.PointerToRawData
          L7_7 = L1_1 - L7_7
          L6_6 = L6_6 - L7_7
          L7_7 = mp
          L7_7 = L7_7.readprotection
          L8_8 = false
          L7_7(L8_8)
          L7_7 = nil
          L8_8 = pe
          L8_8 = L8_8.isencrypted_va
          L9_9 = L0_0
          L8_8 = L8_8(L9_9)
          if L8_8 then
            L8_8 = pe
            L8_8 = L8_8.mmap_va
            L9_9 = L0_0
            L8_8 = L8_8(L9_9, L6_6)
            L7_7 = L8_8
          else
            L8_8 = mp
            L8_8 = L8_8.readfile
            L9_9 = L1_1
            L8_8 = L8_8(L9_9, L6_6)
            L7_7 = L8_8
          end
          L8_8 = 0
          L9_9 = 2048
          for _FORV_13_ = L9_9, L9_9 + 8 do
            if string.byte(L7_7, _FORV_13_ + 1) < 42 or string.byte(L7_7, _FORV_13_ + 1) > 122 then
              L8_8 = L8_8 + 1
            else
              break
            end
          end
          if L8_8 > 0 then
            mp.vfo_add_buffer(string.sub(L7_7, 0, L9_9) .. string.sub(L7_7, L9_9 + L8_8 + 1), "[b64mz]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
          else
            mp.vfo_add_buffer(L7_7, "[b64mz]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
          end
          return mp.CLEAN
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
