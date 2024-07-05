local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
elseif L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.bitand
  L2_2 = mp
  L2_2 = L2_2.get_contextdata
  L3_3 = mp
  L3_3 = L3_3.CONTEXT_DATA_DEVICE_CHARACTERISTICS
  L2_2 = L2_2(L3_3)
  L3_3 = 264193
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 ~= 264193 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = peattributes
  L1_1 = L1_1.isdll
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = peattributes
  L1_1 = L1_1.hasexports
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = pehdr
  L1_1 = L1_1.DataDirectory
  L1_1 = L1_1[1]
  L1_1 = L1_1.Size
  if L1_1 == 0 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_FILENAME
  L1_1 = L1_1(L2_2)
  L2_2 = {}
  L2_2[".exe"] = true
  L2_2[".dll"] = true
  L2_2[".cpl"] = true
  L2_2[".ocx"] = true
  L2_2[".pyd"] = true
  L4_4 = L1_1
  L3_3 = L1_1.sub
  L5_5 = -4
  L3_3 = L3_3(L4_4, L5_5)
  L3_3 = L2_2[L3_3]
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_FILEPATH
  L3_3 = L3_3(L4_4)
  L5_5 = L3_3
  L4_4 = L3_3.find
  L6_6 = "\160"
  L7_7 = 1
  L8_8 = true
  L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8)
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L5_5 = L1_1
  L4_4 = L1_1.find
  L6_6 = "^%l+%.%l%l%l$"
  L4_4 = L4_4(L5_5, L6_6)
  if not L4_4 then
    L5_5 = L1_1
    L4_4 = L1_1.find
    L6_6 = "^~%$%l+%.%l%l%l$"
    L4_4 = L4_4(L5_5, L6_6)
    if not L4_4 then
      L5_5 = L1_1
      L4_4 = L1_1.find
      L6_6 = "^%w+%.%w+%.%w+%.%w+%.%w+%.%w+%.%w+%.%w+$"
      L4_4 = L4_4(L5_5, L6_6)
      if not L4_4 then
        L5_5 = L1_1
        L4_4 = L1_1.find
        L6_6 = "^%w%w%w%w%w+%.%w+$"
        L4_4 = L4_4(L5_5, L6_6)
      end
    end
  elseif L4_4 then
    L4_4 = pehdr
    L4_4 = L4_4.DataDirectory
    L4_4 = L4_4[1]
    L4_4 = L4_4.RVA
    L5_5 = mp
    L5_5 = L5_5.readprotection
    L6_6 = false
    L5_5(L6_6)
    L5_5 = mp
    L5_5 = L5_5.readfile
    L6_6 = pe
    L6_6 = L6_6.foffset_rva
    L7_7 = L4_4
    L6_6 = L6_6(L7_7)
    L7_7 = 36
    L5_5 = L5_5(L6_6, L7_7)
    L6_6 = mp
    L6_6 = L6_6.readu_u32
    L7_7 = L5_5
    L8_8 = 21
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= 1 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = mp
    L6_6 = L6_6.readu_u32
    L7_7 = L5_5
    L8_8 = 25
    L6_6 = L6_6(L7_7, L8_8)
    if L6_6 ~= 1 then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    L6_6 = mp
    L6_6 = L6_6.readu_u32
    L7_7 = L5_5
    L8_8 = 33
    L6_6 = L6_6(L7_7, L8_8)
    L7_7 = pe
    L7_7 = L7_7.mmap_rva
    L8_8 = L6_6
    L9_9 = 4
    L7_7 = L7_7(L8_8, L9_9)
    L5_5 = L7_7
    L7_7 = mp
    L7_7 = L7_7.readu_u32
    L8_8 = L5_5
    L9_9 = 1
    L7_7 = L7_7(L8_8, L9_9)
    L8_8 = pe
    L8_8 = L8_8.mmap_rva
    L9_9 = L7_7
    L8_8 = L8_8(L9_9, 32)
    L9_9 = L8_8.find
    L9_9 = L9_9(L8_8, "^%l+")
    if L9_9 then
      L9_9 = string
      L9_9 = L9_9.lower
      L9_9 = L9_9(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
      if L9_9 ~= "msiexec.exe" then
        L9_9 = string
        L9_9 = L9_9.lower
        L9_9 = L9_9(mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME))
      elseif L9_9 == "rundll32.exe" then
        L9_9 = MpCommon
        L9_9 = L9_9.PathToWin32Path
        L9_9 = L9_9(L3_3)
        L9_9 = L9_9 .. "\\IndexerVolumeGuid"
        mp.ReportLowfi(L9_9, 162679141)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
