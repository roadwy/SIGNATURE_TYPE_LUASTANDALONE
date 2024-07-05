local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = peattributes
L0_0 = L0_0.isdll
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.hasexports
  if L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.amd64_image
    if L0_0 then
      L0_0 = mp
      L0_0 = L0_0.getfilesize
      L0_0 = L0_0()
      if L0_0 > 1703936 then
        L0_0 = mp
        L0_0 = L0_0.CLEAN
        return L0_0
      end
      L0_0 = mp
      L0_0 = L0_0.GetCertificateInfo
      L0_0 = L0_0()
      for L4_4, L5_5 in L1_1(L2_2) do
        if L6_6 ~= nil then
          return L6_6
        end
      end
      if L1_1 >= 2 and L1_1 <= 8 then
        for L7_7 = 1, L2_2 do
          L8_8 = L3_3[L7_7]
          L8_8 = L8_8.rva
          L9_9 = mp
          L9_9 = L9_9.readu_u16
          L9_9 = L9_9(pe.mmap_rva(L8_8, 2), 1)
          if mp.bsplit(L9_9, 8) == 235 or mp.bsplit(L9_9, 8) == 233 then
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
