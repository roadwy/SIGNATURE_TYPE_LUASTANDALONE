local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
L0_0 = hstrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if not L0_0 then
  L0_0 = hstrlog
  L0_0 = L0_0[2]
  L0_0 = L0_0.matched
  if not L0_0 then
    L0_0 = hstrlog
    L0_0 = L0_0[3]
    if not L0_0 then
      L0_0 = hstrlog
      L0_0 = L0_0[4]
    end
  end
elseif L0_0 then
  L0_0 = pehdr
  L0_0 = L0_0.NumberOfSections
  if L0_0 < 6 then
    L0_0 = pehdr
    L0_0 = L0_0.NumberOfSections
    if L0_0 >= 3 then
      L0_0 = 1280
      L1_1 = 256
      L2_2 = 8192
      L3_3 = pesecs
      L3_3 = L3_3[1]
      L3_3 = L3_3.Name
      if L3_3 == ".text" then
        L3_3 = pesecs
        L3_3 = L3_3[1]
        L3_3 = L3_3.VirtualSize
        L4_4 = L0_0 + L1_1
        if L3_3 > L4_4 then
          L3_3 = pesecs
          L3_3 = L3_3[3]
          L3_3 = L3_3.VirtualSize
          if L2_2 < L3_3 then
            L3_3 = pe
            L3_3 = L3_3.mmap_rva
            L4_4 = pesecs
            L4_4 = L4_4[1]
            L4_4 = L4_4.VirtualAddress
            L4_4 = L4_4 + L1_1
            L5_5 = L0_0
            L3_3 = L3_3(L4_4, L5_5)
            L4_4 = true
            L5_5 = 0
            L6_6 = 0
            for L10_10 = 1, 8 do
              L13_13 = L10_10
              L13_13 = L11_11
              if L12_12 > 0 then
                L13_13 = L11_11
                if L12_12 == 0 then
                  L6_6 = L10_10
                  break
                end
              end
            end
            for L10_10 = L6_6, L8_8 - L6_6, 4 do
              L13_13 = L10_10
              L13_13 = L11_11
              if L12_12 > 0 then
                L5_5 = L5_5 + 1
              end
              L13_13 = L11_11
              if L12_12 > 0 then
                L4_4 = false
                break
              end
            end
            if L4_4 then
              if L5_5 > L7_7 then
                L8_8(L9_9)
                for L13_13 = L2_2 - 4, 1, -1 do
                  if mp.readu_u32(L8_8, L13_13) == 720895 or mp.readu_u32(L8_8, L13_13) == 655359 then
                    break
                  end
                end
                if L9_9 ~= -1 then
                  L13_13 = L12_12()
                  L13_13 = L9_9
                  L11_11(L12_12, L13_13, 1)
                  L13_13 = "xorgetti_patched"
                  L11_11(L12_12, L13_13, mp.ADD_VFO_TAKE_ACTION_ON_DAD)
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
