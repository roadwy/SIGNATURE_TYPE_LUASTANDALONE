local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = false
L1_1 = false
L2_2 = ""
L3_3 = mp
L3_3 = L3_3.readu_u32
L4_4 = headerpage
L3_3 = L3_3(L4_4, 44)
if L3_3 ~= 1397311045 then
  L3_3 = mp
  L3_3 = L3_3.readu_u32
  L4_4 = headerpage
  L3_3 = L3_3(L4_4, 55)
  if L3_3 == 827605318 then
    L3_3 = mp
    L3_3 = L3_3.readu_u16
    L4_4 = headerpage
    L3_3 = L3_3(L4_4, 58)
    if L3_3 == 12849 then
      L1_1 = true
      L2_2 = "FAT12"
    elseif L3_3 == 13873 then
      L1_1 = true
      L2_2 = "FAT16"
    else
      L4_4 = mp
      L4_4 = L4_4.set_mpattribute
      L4_4("BM_VirtualFS_FAT_UNKNOWN")
      L4_4 = tostring
      L4_4 = L4_4(L3_3)
      L2_2 = L4_4
    end
  else
    L3_3 = mp
    L3_3 = L3_3.readu_u32
    L4_4 = headerpage
    L3_3 = L3_3(L4_4, 83)
    if L3_3 == 861159750 then
      L3_3 = mp
      L3_3 = L3_3.readu_u16
      L4_4 = headerpage
      L3_3 = L3_3(L4_4, 86)
      if L3_3 == 12851 then
        L1_1 = true
        L2_2 = "FAT32"
      else
        L4_4 = mp
        L4_4 = L4_4.set_mpattribute
        L4_4("BM_VirtualFS_FAT_UNKNOWN")
        L4_4 = tostring
        L4_4 = L4_4(L3_3)
        L2_2 = L4_4
      end
    end
  end
end
if L1_1 and L2_2 ~= "" then
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
  L3_3 = L3_3(L4_4)
  if L3_3 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L4_4 = L4_4(L3_3)
    L3_3 = L4_4
    L4_4 = {}
    L4_4["vmware.exe"] = true
    L4_4["vmplayer.exe"] = true
    if L4_4[L3_3] then
      L0_0 = true
      mp.set_mpattribute("Lua:FATCommonProcExcl")
    end
  end
  L4_4 = mp
  L4_4 = L4_4.getfilename
  L4_4 = L4_4(mp.FILEPATH_QUERY_LOWERCASE)
  if L4_4 ~= nil and #L4_4 > 4 and string.sub(L4_4, -4) == ".flp" then
    L0_0 = true
    mp.set_mpattribute("Lua:FATCommonFileNameExcl")
  end
  if not L0_0 then
    mp.set_mpattribute("BM_VirtualFS_" .. L2_2)
    return mp.INFECTED
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
