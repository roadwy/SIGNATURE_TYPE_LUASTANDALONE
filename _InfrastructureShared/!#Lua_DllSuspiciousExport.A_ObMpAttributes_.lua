local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
      L0_0 = mp
      L0_0 = L0_0.getfilesize
      L0_0 = L0_0()
      if L0_0 < 100000 or L0_0 > 500000 then
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
      L1_1 = pe
      L1_1 = L1_1.get_versioninfo
      L1_1 = L1_1()
      if L1_1 == nil then
        L2_2 = mp
        L2_2 = L2_2.CLEAN
        return L2_2
      end
      L2_2 = L1_1.CompanyName
      if L2_2 == "Microsoft Corporation" then
        L2_2 = mp
        L2_2 = L2_2.CLEAN
        return L2_2
      end
      L2_2 = pehdr
      L2_2 = L2_2.DataDirectory
      L2_2 = L2_2[1]
      L2_2 = L2_2.RVA
      L3_3 = mp
      L3_3 = L3_3.readprotection
      L4_4 = false
      L3_3(L4_4)
      L3_3 = mp
      L3_3 = L3_3.readfile
      L4_4 = pe
      L4_4 = L4_4.foffset_rva
      L5_5 = L2_2
      L4_4 = L4_4(L5_5)
      L5_5 = 36
      L3_3 = L3_3(L4_4, L5_5)
      L4_4 = mp
      L4_4 = L4_4.readu_u32
      L5_5 = L3_3
      L4_4 = L4_4(L5_5, 21)
      if L4_4 == 1 then
        L4_4 = mp
        L4_4 = L4_4.readu_u32
        L5_5 = L3_3
        L4_4 = L4_4(L5_5, 25)
        if L4_4 == 1 then
          L4_4 = mp
          L4_4 = L4_4.readu_u32
          L5_5 = L3_3
          L4_4 = L4_4(L5_5, 33)
          L5_5 = pe
          L5_5 = L5_5.mmap_rva
          L5_5 = L5_5(L4_4, 4)
          L3_3 = L5_5
          L5_5 = mp
          L5_5 = L5_5.readu_u32
          L5_5 = L5_5(L3_3, 1)
          if pe.mmap_rva(L5_5, 18) == "DllRegisterServer\000" or pe.mmap_rva(L5_5, 18) == "SetModuleHandle\000" or pe.mmap_rva(L5_5, 18) == "StartServer\000" or pe.mmap_rva(L5_5, 18) == "StopServer\000" or pe.mmap_rva(L5_5, 18) == "MatrixMain\000" then
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
