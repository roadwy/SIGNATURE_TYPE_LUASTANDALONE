local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = peattributes
L0_0 = L0_0.reads_vdll_code
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "LUA:StrangeImportRVA"
  L0_0 = L0_0(L1_1)
elseif L0_0 then
  L0_0 = 0
  L1_1 = epcode
  L1_1 = L1_1[1]
  if L1_1 == 141 then
    L1_1 = epcode
    L1_1 = L1_1[2]
    if L1_1 == 148 then
      L1_1 = epcode
      L1_1 = L1_1[3]
      if L1_1 ~= 36 then
        L1_1 = epcode
        L1_1 = L1_1[3]
      elseif L1_1 == 4 then
        L1_1 = epcode
        L1_1 = L1_1[8]
        if L1_1 == 235 then
          L0_0 = 1
        end
      end
    end
  else
    L1_1 = pehdr
    L1_1 = L1_1.SizeOfImage
    if L1_1 > 1179648 then
      L1_1 = pehdr
      L1_1 = L1_1.SizeOfImage
      if L1_1 < 1966080 then
        L1_1 = epcode
        L1_1 = L1_1[1]
        if L1_1 == 104 then
          L1_1 = mp
          L1_1 = L1_1.readu_u32
          L2_2 = epcode
          L3_3 = 6
          L1_1 = L1_1(L2_2, L3_3)
          if L1_1 == 488 then
            L1_1 = mp
            L1_1 = L1_1.readu_u16
            L2_2 = epcode
            L3_3 = 10
            L1_1 = L1_1(L2_2, L3_3)
            if L1_1 == 49920 then
              L0_0 = 2
            end
          end
        end
      end
    end
  end
  if L0_0 == 0 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = pehdr
  L1_1 = L1_1.DataDirectory
  L2_2 = pe
  L2_2 = L2_2.IMAGE_DIRECTORY_ENTRY_SECURITY
  L1_1 = L1_1[L2_2]
  L1_1 = L1_1.RVA
  if L1_1 == 0 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = mp
  L2_2 = L2_2.getfilesize
  L2_2 = L2_2()
  if L1_1 >= L2_2 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = L2_2 - L1_1
  if L3_3 < 1024 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.readprotection
  L5_5 = false
  L4_4(L5_5)
  L4_4 = mp
  L4_4 = L4_4.readfile
  L5_5 = L1_1 + 336
  L4_4 = L4_4(L5_5, 128)
  L5_5 = mp
  L5_5 = L5_5.crc32
  L5_5 = L5_5(-1, L4_4, 1, 128)
  if L5_5 == 3701156430 then
    L5_5 = mp
    L5_5 = L5_5.INFECTED
    return L5_5
  end
  L5_5 = mp
  L5_5 = L5_5.readfile
  L5_5 = L5_5(L1_1 + 378, 128)
  L4_4 = L5_5
  L5_5 = mp
  L5_5 = L5_5.crc32
  L5_5 = L5_5(-1, L4_4, 1, 128)
  if L5_5 == 2309974109 then
    L5_5 = mp
    L5_5 = L5_5.INFECTED
    return L5_5
  end
  if L3_3 < 2560 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = mp
  L5_5 = L5_5.readfile
  L5_5 = L5_5(L1_1 + 2048, 128)
  L4_4 = L5_5
  L5_5 = mp
  L5_5 = L5_5.crc32
  L5_5 = L5_5(-1, L4_4, 1, 128)
  if L5_5 == 2574726046 then
    L5_5 = mp
    L5_5 = L5_5.INFECTED
    return L5_5
  end
  if L3_3 < 4096 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = mp
  L5_5 = L5_5.readfile
  L5_5 = L5_5(L1_1 + 2832, 96)
  L4_4 = L5_5
  L5_5 = mp
  L5_5 = L5_5.crc32
  L5_5 = L5_5(-1, L4_4, 1, 96)
  if L5_5 == 286331011 then
    return mp.INFECTED
  end
  if L5_5 == 1993805178 then
    return mp.INFECTED
  end
  if L5_5 == 2529611765 then
    return mp.INFECTED
  end
  if L5_5 == 3673830025 then
    return mp.INFECTED
  end
  if L3_3 < 5376 then
    return mp.CLEAN
  end
  L4_4 = mp.readfile(L1_1 + 5033, 96)
  L5_5 = mp.crc32(-1, L4_4, 1, 96)
  if L5_5 == 3673830025 then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
