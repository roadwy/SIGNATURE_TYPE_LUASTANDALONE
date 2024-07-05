local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 512000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = peattributes
L0_0 = L0_0.headerchecksum0
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = pesecs
L0_0 = L0_0[3]
L1_1 = pesecs
L1_1 = L1_1[2]
L1_1 = L1_1.SizeOfRawData
if L1_1 > 8192 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.Name
L2_2 = L1_1
L1_1 = L1_1.sub
L3_3 = 2
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= "data" then
  L1_1 = L0_0.SizeOfRawData
  if L1_1 == 4096 then
    L1_1 = L0_0.VirtualSize
    if L1_1 <= 8192 then
      L1_1 = L0_0.VirtualAddress
      if L1_1 >= 20480 then
        L1_1 = L0_0.VirtualAddress
        if L1_1 <= 36864 then
          L1_1 = mp
          L1_1 = L1_1.CLEAN
          return L1_1
        end
      end
    end
  end
end
L1_1 = pe
L1_1 = L1_1.query_import
L2_2 = L1_1
L3_3 = pe
L3_3 = L3_3.IMPORT_STATIC
L2_2 = L2_2(L3_3, 4288984855)
if 0 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1
L3_3 = pe
L3_3 = L3_3.IMPORT_STATIC
L2_2 = L2_2(L3_3, 3419395426)
if 0 == L2_2 then
  L2_2 = L1_1
  L3_3 = pe
  L3_3 = L3_3.IMPORT_STATIC
  L2_2 = L2_2(L3_3, 1058758707)
  if 0 == L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = L1_1
L3_3 = pe
L3_3 = L3_3.IMPORT_STATIC
L2_2 = L2_2(L3_3, 1881577768)
if 0 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1
L3_3 = pe
L3_3 = L3_3.IMPORT_STATIC
L2_2 = L2_2(L3_3, 2560256095)
if 0 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1
L3_3 = pe
L3_3 = L3_3.IMPORT_STATIC
L2_2 = L2_2(L3_3, 1256947212)
if 0 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1
L3_3 = pe
L3_3 = L3_3.IMPORT_STATIC
L2_2 = L2_2(L3_3, 453198482)
if 0 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = L1_1
L3_3 = pe
L3_3 = L3_3.IMPORT_STATIC
L2_2 = L2_2(L3_3, 133826329)
if 0 == L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = pesecs
L2_2 = L2_2[3]
L2_2 = L2_2.VirtualAddress
L3_3 = pehdr
L3_3 = L3_3.ImageBase
L2_2 = L2_2 + L3_3
L3_3 = pe
L3_3 = L3_3.vm_search
L3_3 = L3_3(L2_2, L2_2 + 2048, "\000r\000b\000\000\000\000\144\000", nil, pe.VM_SEARCH_BM)
if 4294967295 == L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readprotection
L3_3(false)
L3_3 = mp
L3_3 = L3_3.readfile
L3_3 = L3_3(mp.bitand(L0_0.PointerToRawData + 2048, 4294967040), 2048)
if mp.crc32(-1, L3_3, 1, 0) ~= 236406113 then
  return mp.CLEAN
end
return mp.INFECTED
