local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.UfsGetMetadataBool
L1_1 = "DotNetCoreBundleExtracts"
L2_2 = false
L1_1 = L0_0(L1_1, L2_2)
L2_2 = peattributes
L2_2 = L2_2.ismsil
if L2_2 == false or not L1_1 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "\000\000\n(\144\001\001\000\000+\144\t\001\000(\144\000"
L3_3 = mp
L3_3 = L3_3.BMSearchFile
L4_4 = 0
L5_5 = 3000
L6_6 = L2_2
L3_3 = L3_3(L4_4, L5_5, L6_6)
if L3_3 ~= -1 then
  L4_4 = pe
  L4_4 = L4_4.get_netmetadata
  L4_4 = L4_4()
  L5_5 = {
    L6_6,
    L7_7,
    L8_8
  }
  L6_6 = "GetProcesses"
  L7_7 = "Process"
  L8_8 = "Count"
  L6_6 = mp
  L6_6 = L6_6.readu_u32
  L7_7 = headerpage
  L8_8 = L3_3
  L6_6 = L6_6(L7_7, L8_8)
  L7_7 = L4_4.strheap_RVA
  L8_8 = pe
  L8_8 = L8_8.metadata_decode
  L9_9 = L6_6
  L8_8 = L8_8(L9_9, 2)
  L7_7 = L7_7 + L8_8
  L8_8 = mp
  L8_8 = L8_8.readprotection
  L9_9 = false
  L8_8(L9_9)
  L8_8 = pe
  L8_8 = L8_8.mmap_rva
  L9_9 = L7_7
  L8_8 = L8_8(L9_9, #L5_5[1])
  L9_9 = string
  L9_9 = L9_9.find
  L9_9 = L9_9(L8_8, L5_5[1])
  if L9_9 == nil then
    L9_9 = mp
    L9_9 = L9_9.readprotection
    L9_9(true)
    L9_9 = mp
    L9_9 = L9_9.CLEAN
    return L9_9
  end
  L9_9 = pe
  L9_9 = L9_9.metadata_decode
  L9_9 = L9_9(L6_6, 1)
  L7_7 = L4_4.strheap_RVA + pe.metadata_decode(L9_9, 2)
  L8_8 = pe.mmap_rva(L7_7, #L5_5[2])
  if string.find(L8_8, L5_5[2]) == nil then
    mp.readprotection(true)
    return mp.CLEAN
  end
  L6_6 = mp.readu_u32(headerpage, L3_3 + 5)
  L9_9 = pe.metadata_decode(L6_6, 1)
  L7_7 = L4_4.strheap_RVA + pe.metadata_decode(L9_9, 2)
  L8_8 = pe.mmap_rva(L7_7, #L5_5[3])
  if string.find(L8_8, L5_5[3]) == nil then
    mp.readprotection(true)
    return mp.CLEAN
  end
  mp.readprotection(true)
  return mp.INFECTED
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
