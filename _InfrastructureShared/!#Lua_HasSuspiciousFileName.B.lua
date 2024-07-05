local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = pehdr
L0_0 = L0_0.Machine
if L0_0 == 332 then
  L0_0 = peattributes
  L0_0 = L0_0.isappcontainer
  if not L0_0 then
    L0_0 = peattributes
    L0_0 = L0_0.resource_only_dll
    if not L0_0 then
      L0_0 = peattributes
      L0_0 = L0_0.no_ep
      if not L0_0 then
        L0_0 = peattributes
        L0_0 = L0_0.dmg_entrypoint
        if not L0_0 then
          L0_0 = peattributes
          L0_0 = L0_0.dmg_not_executable_image
          if not L0_0 then
            L0_0 = peattributes
            L0_0 = L0_0.dmg_truncated
          end
        end
      end
    end
  end
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 256 or L0_0 > 5242880 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.SCANREASON_UNKNOWN
  if L1_1 ~= L2_2 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = mp
L2_2 = L2_2.GetResmgrBasePlugin
L2_2 = L2_2()
if L2_2 ~= "Folder" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.gethost
L2_2 = L2_2()
L3_3 = mp
L3_3 = L3_3.HOST_X86
if L2_2 ~= L3_3 then
  L3_3 = mp
  L3_3 = L3_3.HOST_X64
  if L2_2 ~= L3_3 then
    L3_3 = mp
    L3_3 = L3_3.CLEAN
    return L3_3
  end
end
L3_3 = pcall
L4_4 = mp
L4_4 = L4_4.get_parent_filehandle
L4_4 = L3_3(L4_4)
if L3_3 then
  L5_5 = pcall
  L6_6 = mp
  L6_6 = L6_6.get_filesize_by_handle
  L6_6 = L5_5(L6_6, L4_4)
  _ = L6_6
  L3_3 = L5_5
  if L3_3 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
end
L5_5 = mp
L5_5 = L5_5.get_contextdata
L6_6 = mp
L6_6 = L6_6.CONTEXT_DATA_FILENAME
L5_5 = L5_5(L6_6)
L6_6 = L5_5.match
L6_6 = L6_6(L5_5, "^([0-9A-Fa-f]+)%.(...)")
if L6_6 == nil or string.len(L6_6) < 32 or string.find(L6_6, "[0-9]", 1) == nil or string.find(L6_6, "[A-Fa-f]", 1) == nil then
  return mp.CLEAN
end
return mp.INFECTED
