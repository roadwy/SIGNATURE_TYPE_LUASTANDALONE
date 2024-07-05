local L0_0, L1_1, L2_2, L3_3
L0_0 = pehdr
L0_0 = L0_0.NumberOfSections
if L0_0 == 3 then
  L0_0 = pesecs
  L0_0 = L0_0[1]
  L0_0 = L0_0.SizeOfRawData
  if L0_0 > 151552 then
    L0_0 = pehdr
    L0_0 = L0_0.DataDirectory
    L0_0 = L0_0[2]
    L0_0 = L0_0.Size
    if L0_0 > 74 then
      L0_0 = pehdr
      L0_0 = L0_0.DataDirectory
      L0_0 = L0_0[2]
      L0_0 = L0_0.Size
      if L0_0 < 90 then
        L0_0 = peattributes
        L0_0 = L0_0.isexe
        if L0_0 then
          L0_0 = hstrlog
          L0_0 = L0_0[1]
          L0_0 = L0_0.matched
          if L0_0 then
            L0_0 = mp
            L0_0 = L0_0.set_mpattribute
            L1_1 = "LowFi:Kurei_PNG"
            L0_0(L1_1)
            L0_0 = mp
            L0_0 = L0_0.readprotection
            L1_1 = false
            L0_0(L1_1)
            L0_0 = pe
            L0_0 = L0_0.foffset_va
            L1_1 = hstrlog
            L1_1 = L1_1[1]
            L1_1 = L1_1.VA
            L0_0 = L0_0(L1_1)
            L1_1 = {L2_2, L3_3}
            L2_2 = 3058425074
            L3_3 = 8654206
            L2_2 = mp
            L2_2 = L2_2.readfile
            L3_3 = L0_0 + 2000
            L2_2 = L2_2(L3_3, 1168)
            L3_3 = mp
            L3_3 = L3_3.crc32
            L3_3 = L3_3(-1, L2_2, 1, 0)
            if L3_3 == L1_1[1] then
              L2_2 = mp.readfile(L0_0 + 61440, 1168)
              L3_3 = mp.crc32(-1, L2_2, 1, 0)
              if L3_3 == L1_1[2] then
                return mp.INFECTED
              end
              return mp.LOWFI
            end
            return mp.LOWFI
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
