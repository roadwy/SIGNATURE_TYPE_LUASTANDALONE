if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if #mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)) < 8 or #mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)) > 22 then
    return mp.CLEAN
  end
  if mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("winsxs", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\os\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\device\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\src\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("amd64", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("x86fre", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("ia64fre", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\extractedfiles\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\windowsapps\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\x86", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\program files\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\debug\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\release\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\obj\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\bin\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("\\stubexe\\", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("backup", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("atosc2", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("system32", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("syswow64", 1, true) or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):find("nservices", 1, true) then
    return mp.CLEAN
  end
  if ({
    ["wininit.exe"] = true,
    ["smss.exe"] = true,
    ["explorer.exe"] = true,
    ["lsass.exe"] = true,
    ["svchost.exe"] = true,
    ["conhost.exe"] = true,
    ["consent.exe"] = true,
    ["csrss.exe"] = true,
    ["dllhost.exe"] = true,
    ["fontdrvhost.exe"] = true,
    ["ie4uinit.exe"] = true,
    ["lsaiso.exe"] = true,
    ["msdtc.exe"] = true,
    ["mshta.exe"] = true,
    ["ntoskrnl.exe"] = true,
    ["runonce.exe"] = true,
    ["runtimebroker.exe"] = true,
    ["sdiagnhost.exe"] = true,
    ["searchfilterhost.exe"] = true,
    ["searchindexer.exe"] = true,
    ["searchprotocolhost.exe"] = true,
    ["services.exe"] = true,
    ["spoolsv.exe"] = true,
    ["synchost.exe"] = true,
    ["taskmgr.exe"] = true,
    ["werfault.exe"] = true,
    ["werfaultsecure.exe"] = true,
    ["winlogon.exe"] = true,
    ["audiodg.exe"] = true,
    ["taskhostw.exe"] = true,
    ["appvclient.exe"] = true,
    ["splwow64.exe"] = true,
    ["wmiprvse.exe"] = true,
    ["wuauclt.exe"] = true,
    ["vssvc.exe"] = true,
    ["wsmprovhost.exe"] = true,
    ["wmiapsrv.exe"] = true,
    ["sppsvc.exe"] = true,
    ["fxssvc.exe"] = true
  })[mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))] then
    return mp.INFECTED
  end
end
return mp.CLEAN
