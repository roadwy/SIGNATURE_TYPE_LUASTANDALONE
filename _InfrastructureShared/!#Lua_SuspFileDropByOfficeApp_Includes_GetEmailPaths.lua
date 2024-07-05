local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "winword.exe|excel.exe|powerpnt.exe|outlook.exe|commsapps.exe|lync.exe|teams.exe|"
L4_4 = L2_2
L3_3 = L2_2.find
L5_5 = L1_1
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L3_3 = isOutlookProcess
  L4_4 = L1_1
  L3_3 = L3_3(L4_4)
elseif L3_3 then
  L3_3 = mp
  L3_3 = L3_3.getfilename
  L4_4 = mp
  L4_4 = L4_4.bitor
  L5_5 = mp
  L5_5 = L5_5.bitor
  L5_5 = L5_5(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH)
  L5_5 = L4_4(L5_5, mp.FILEPATH_QUERY_LOWERCASE)
  L4_4 = L3_3(L4_4, L5_5, L4_4(L5_5, mp.FILEPATH_QUERY_LOWERCASE))
  L5_5 = L4_4.sub
  L5_5 = L5_5(L4_4, -3)
  mp.set_mpattribute("Lua:OfficeApp!" .. L1_1)
  mp.set_mpattribute("Lua:OfficeAppDropped!" .. L4_4)
  mp.set_mpattribute("Lua:OfficeAppDroppedExt!" .. L5_5)
  if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
    if mp.get_mpattribute("BM_ScriptFile") then
      mp.set_mpattribute("BM_ScriptFileDropByOffcApp")
    end
    if mp.get_mpattribute("BM_MZ_FILE") then
      if L3_3:find("appdata\\local\\assembly", 1, true) or L3_3:find("\\local\\box\\", 1, true) then
        mp.set_mpattribute("Lua:OfficeAddinAssemblyExclPath")
      else
        mp.set_mpattribute("BM_PeFileDropByOffcApp")
      end
    end
    if mp.get_mpattribute("BM_LNK_FILE") then
      mp.set_mpattribute("BM_LnkFileDropByOffcApp")
    end
    if L5_5 == "pdf" then
      mp.set_mpattribute("BM_PdfDroppedByOfficeApp")
    end
    if ("tmf|emf|wmf|spl|off|bak|m4a|mp4|mp3|wav|bmp|kgx|idx|etl|log|ico|"):find(L5_5) or ("aplorislib[1].js|tokencache|temp.db.idx|msip_telemetry.tm-journal|_isres_0x0409.dll"):find(L4_4) or L4_4:match("~wrs%{.+%}%.tmp") or L4_4:match("mso.+%.tmp") or L4_4:match("oc.+%.tmp") or L4_4:match("react.+%.js") or L3_3:find("\\office\\recent", 1, true) or L3_3:find("\\windows\\recent", 1, true) or L3_3:find("$recycle.bin", 1, true) or L3_3:find("\\appdata\\roaming\\microsoft\\excel\\.-xlsx?%.lnk") or L3_3:find("\\appdata\\roaming\\microsoft\\word\\.-docx?%.lnk") or L3_3:find("\\appdata\\roaming\\microsoft\\powerpoint\\.-pptx?%.lnk") or L3_3:find("\\microsoft\\teams\\", 1, true) or L3_3:find("\\windows\\cryptoguard", 1, true) or L3_3:find("\\microsoft\\msip\\tokencache", 1, true) or L3_3:find("\\internet explorer\\quick launch\\microsoft outlook.lnk", 1, true) or L3_3:find("\\carbonblack\\store", 1, true) or L3_3:find("\\crowdstrike\\downloads", 1, true) or L3_3:find("\\cyvera\\ransomware", 1, true) or L3_3:find("\\outlook\\offline address books", 1, true) or L3_3:find("\\slack\\service worker\\cachestorage", 1, true) or L3_3:find("\\systemcertificates\\my\\certificates\\", 1, true) or L3_3:find("\\temp\\photocache\\", 1, true) or L3_3:find("\\windows\\csc\\", 1, true) then
    end
    if true then
      mp.set_mpattribute("Lua:OfficeAppExcludePath")
    end
    if not true then
      if L3_3:match("windows\\temp") then
        mp.set_mpattribute("Lua:OfficeAppDroppedIn!wintemp")
      end
      if L3_3:match("users\\.-\\appdata\\local") then
        mp.set_mpattribute("Lua:OfficeAppDroppedIn!localappdata")
      end
      if L3_3:match("users\\.-\\appdata\\remote") then
        mp.set_mpattribute("Lua:OfficeAppDroppedIn!remoteappdata")
      end
      if L3_3:match("users\\.-\\appdata\\local\\temp") then
        mp.set_mpattribute("Lua:OfficeAppDroppedIn!usrtemp")
      end
      if L3_3:match("users\\.-\\desktop$") then
        mp.set_mpattribute("Lua:OfficeAppDroppedIn!usrdesktop")
      end
      if L3_3:match("users\\.-\\documents$") then
        mp.set_mpattribute("Lua:OfficeAppDroppedIn!usrdocs")
      end
    end
  end
  return mp.INFECTED
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
