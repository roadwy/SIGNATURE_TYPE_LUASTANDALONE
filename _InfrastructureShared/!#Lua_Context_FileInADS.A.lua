local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilename
L1_1 = mp
L1_1 = L1_1.bitor
L2_2 = mp
L2_2 = L2_2.FILEPATH_QUERY_FNAME
L3_3 = mp
L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
L8_8 = L1_1(L2_2, L3_3)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L1_1(L2_2, L3_3))
if L0_0 ~= nil then
  L1_1 = #L0_0
  if L1_1 < 2 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.get_parent_filehandle
L1_1 = L1_1()
L2_2 = mp
L2_2 = L2_2.is_handle_nil
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if not L2_2 then
  L2_2 = string
  L2_2 = L2_2.find
  L3_3 = L0_0
  L4_4 = "->"
  L5_5 = 1
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 ~= nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L0_0
L4_4 = ":"
L5_5 = 1
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.sub
  L4_4 = L0_0
  L5_5 = L2_2 + 1
  L6_6 = #L0_0
  L3_3 = L3_3(L4_4, L5_5, L6_6)
  if L3_3 ~= nil then
    L4_4 = #L3_3
    if L4_4 > 0 then
      L4_4 = {}
      L4_4["zone.identifier"] = "zi"
      L4_4["zone.identifier:$data"] = "zid"
      L4_4.tamper = "tamper"
      L4_4.favicon = "favicon"
      L4_4.oestandardproperty = "oesp"
      L4_4.knownsources = "knownsources"
      L4_4.rvcontext = "rvcontext"
      L4_4["com.dropbox.attributes"] = "dropboxattr"
      L4_4["com.dropbox.attrs"] = "dropboxattrs"
      L4_4["com.dropbox.internal"] = "dropboxinternal"
      L4_4["com.amazon.drive.sync"] = "awsdrivesync"
      L4_4["com.apple.lastuseddate#ps"] = "apple_sync"
      L4_4.mbinfo = "mbinfo"
      L4_4.afp_afpinfo = "acronisinfo"
      L4_4["fsrm{ef88c031-5950-4164-ab92-eec5f16005a5}"] = "ms_fsrm"
      L4_4.x5zn8agxs4 = "avast_data"
      L4_4["6e53bff5-0001-412b-8407-e3aede763511"] = "diagtrack_agent"
      L4_4["incompletestartprocessprotection.cnt"] = "avast_data2"
      L4_4.versioncache = "sharedfiles"
      L4_4.apcacheheader = "apcacheheader"
      L4_4.databusdeliverylog = "databusdeliverylog"
      L4_4.wofcompresseddata = "wofcompresseddata"
      L4_4["&#x05;summaryinformation"] = "summaryinformation"
      L4_4["&#x05;documentsummaryinformation"] = "summaryinformation"
      L4_4["gbpkmap.lst"] = "gbpkmap"
      L4_4.dlpfac = "dlpfac"
      L4_4.ca_inoculateit = "ca_inoculateit"
      L4_4["jdnfile.identifier"] = "jdnfile"
      L5_5 = L4_4[L3_3]
      if L5_5 ~= nil then
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L7_7 = "Lua:Context/FileInADS.A!commonadslist"
        L6_6(L7_7)
        L6_6 = mp
        L6_6 = L6_6.set_mpattribute
        L7_7 = "Lua:Context/FileInADS.A!"
        L8_8 = L5_5
        L7_7 = L7_7 .. L8_8
        L6_6(L7_7)
      end
      L6_6 = string
      L6_6 = L6_6.sub
      L7_7 = L0_0
      L8_8 = 0
      L6_6 = L6_6(L7_7, L8_8, L2_2)
      if L6_6 ~= nil then
        L7_7 = #L6_6
        if L7_7 > 5 then
          L7_7 = {}
          L7_7["cngsvc.exe:"] = "countertack"
          L8_8 = L7_7[L6_6]
          if L8_8 ~= nil then
            mp.set_mpattribute("Lua:Context/FileInADS.A!commonadslist")
            mp.set_mpattribute("Lua:Context/FileInADS.A!" .. L8_8)
          end
          if L6_6 == "system32:" and #L3_3 >= 40 and string.sub(L3_3, 0, 1) == "$" then
            mp.set_mpattribute("Lua:Context/FileInADS.A!commoninwindir")
          end
        end
      end
      L7_7 = mp
      L7_7 = L7_7.get_mpattribute
      L8_8 = "BM_MZ_FILE"
      L7_7 = L7_7(L8_8)
      if L7_7 then
        L7_7 = mp
        L7_7 = L7_7.set_mpattribute
        L8_8 = "Lua:Context/PeFileInADS.A"
        L7_7(L8_8)
      end
      L7_7 = mp
      L7_7 = L7_7.INFECTED
      return L7_7
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
