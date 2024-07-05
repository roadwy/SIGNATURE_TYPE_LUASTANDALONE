local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
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
L2_2 = string
L2_2 = L2_2.lower
L3_3 = mp
L3_3 = L3_3.getfilename
L10_10 = L3_3()
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L3_3())
L4_4 = L2_2
L3_3 = L2_2.find
L5_5 = ":\\windows\\winsxs"
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L2_2
L3_3 = L2_2.find
L5_5 = ":\\windows\\installer"
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L2_2
L3_3 = L2_2.find
L5_5 = ":\\sccmcontentlib\\filelib"
L6_6 = 1
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.gethost
L3_3 = L3_3()
L4_4 = mp
L4_4 = L4_4.HOST_X86
if L3_3 ~= L4_4 then
  L4_4 = mp
  L4_4 = L4_4.HOST_X64
  if L3_3 ~= L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
end
L4_4 = pcall
L5_5 = mp
L5_5 = L5_5.get_parent_filehandle
L5_5 = L4_4(L5_5)
if L4_4 then
  L6_6 = pcall
  L7_7 = mp
  L7_7 = L7_7.get_filesize_by_handle
  L8_8 = L5_5
  L7_7 = L6_6(L7_7, L8_8)
  _ = L7_7
  L4_4 = L6_6
  if L4_4 then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
end
L6_6 = mp
L6_6 = L6_6.utf16to8
L7_7 = mp
L7_7 = L7_7.getwfilename
L10_10 = L7_7()
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L7_7())
L7_7 = sysio
L7_7 = L7_7.GetFileAttributes
L8_8 = L6_6
L7_7 = L7_7(L8_8)
L8_8 = "|"
L10_10 = L6_6
L9_9 = L6_6.match
L9_9 = L9_9(L10_10, "..-[^\\/]-(%.?[^%.\\/:]+):?[^%.\\/:]*$")
L10_10 = L9_9
L9_9 = L9_9.lower
L9_9 = L9_9(L10_10)
L10_10 = "|"
L8_8 = L8_8 .. L9_9 .. L10_10
L9_9 = "|.exe|.bat|.cmd|.pif|.scr|.cpl|.dll|.ocx|.sys|.drv|.data|.metadata_dll|.mptest|.api|.ax|.pmp|.mpp|.x3d|.mp|.pun|.ref|.p3k|.acm|.ime|.deploy"
L10_10 = {
  "Lua:GenericNonRtp",
  nil == (L6_6:find(".", 1, true) and L9_9:find(L8_8, 1, true)) and "N" or "_",
  L7_7 ~= 4294967295 and mp.bitand(L7_7, 2) ~= 0 and "H" or "_",
  peattributes.genpacked and "P" or "_"
}
mp.set_mpattribute(table.concat(L10_10, ""))
return mp.CLEAN
