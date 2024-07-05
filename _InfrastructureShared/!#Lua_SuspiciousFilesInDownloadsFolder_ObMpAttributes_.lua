local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
  L0_0 = L0_0(L1_1)
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.getfilename
    L1_1 = mp
    L1_1 = L1_1.bitor
    L2_2 = mp
    L2_2 = L2_2.bitor
    L3_3 = mp
    L3_3 = L3_3.FILEPATH_QUERY_FNAME
    L4_4 = mp
    L4_4 = L4_4.FILEPATH_QUERY_PATH
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = mp
    L3_3 = L3_3.FILEPATH_QUERY_LOWERCASE
    L6_6 = L1_1(L2_2, L3_3)
    L1_1 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L1_1(L2_2, L3_3))
    if L0_0 ~= nil then
      L3_3 = L0_0
      L2_2 = L0_0.len
      L2_2 = L2_2(L3_3)
      if L2_2 > 12 and L1_1 ~= nil then
        L2_2 = false
        L3_3 = ""
        L5_5 = L0_0
        L4_4 = L0_0.sub
        L6_6 = -10
        L4_4 = L4_4(L5_5, L6_6)
        if L4_4 == "\\downloads" then
          L2_2 = true
          L3_3 = "Lua:WrittenToDownloadFolder"
          L4_4 = mp
          L4_4 = L4_4.set_mpattribute
          L5_5 = L3_3
          L4_4(L5_5)
        else
          L5_5 = L0_0
          L4_4 = L0_0.find
          L6_6 = "\\downloads\\%w+$"
          L4_4 = L4_4(L5_5, L6_6)
          if L4_4 ~= nil then
            L2_2 = true
            L3_3 = "Lua:WrittenToDownloadFolder1Sub"
            L4_4 = mp
            L4_4 = L4_4.set_mpattribute
            L5_5 = L3_3
            L4_4(L5_5)
          end
        end
        if L2_2 == true then
          L5_5 = L1_1
          L4_4 = L1_1.len
          L4_4 = L4_4(L5_5)
          if L4_4 > 64 then
            L4_4 = mp
            L4_4 = L4_4.set_mpattribute
            L5_5 = "Lua:WrittenToDownloadFolderWithLongFileName"
            L4_4(L5_5)
          end
          L4_4 = mp
          L4_4 = L4_4.get_contextdata
          L5_5 = mp
          L5_5 = L5_5.CONTEXT_DATA_PROCESSNAME
          L4_4 = L4_4(L5_5)
          L4_4 = L4_4 or ""
          if L4_4 == "" then
            L5_5 = L3_3
            L6_6 = "ByUnknownParentProcess"
            L3_3 = L5_5 .. L6_6
          else
            L5_5 = {}
            L5_5["radeonsettings.exe"] = "Updater"
            L5_5["razercentralservice.exe"] = "Updater"
            L5_5["searchprotocolhost.exe"] = "WindowsBinary"
            L5_5["explorer.exe"] = "Explorer"
            L5_5["svchost.exe"] = "WindowsBinary"
            L5_5["dllhost.exe"] = "WindowsBinary"
            L5_5["7zg.exe"] = "Archiver"
            L5_5["winzip64.exe"] = "Archiver"
            L5_5["winrar.exe"] = "Archiver"
            L5_5["chrome.exe"] = "Browser"
            L5_5["opera.exe"] = "Browser"
            L5_5["brave.exe"] = "Browser"
            L5_5["bittorrent.exe"] = "Torrent"
            L5_5["utorrent.exe"] = "Torrent"
            L6_6 = L4_4.lower
            L6_6 = L6_6(L4_4)
            L6_6 = L5_5[L6_6]
            if nil == L6_6 then
              L3_3 = L3_3 .. "ByOtherParentProcess"
            else
              L3_3 = L3_3 .. "By" .. L6_6
            end
          end
          L5_5 = mp
          L5_5 = L5_5.set_mpattribute
          L6_6 = L3_3
          L5_5(L6_6)
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
