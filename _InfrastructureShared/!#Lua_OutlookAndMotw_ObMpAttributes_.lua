if mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) == false or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if mp.GetMOTWZone() ~= nil and mp.GetMOTWZone() >= 3 then
  if (mp.get_contextdata(mp.CONTEXT_DATA_PROCESSNAME) or ""):lower() == "outlook.exe" then
    if mp.getfilesize() <= 4194304 and (mp.get_mpattribute("Lua:SingleSuspiciousExtensionInZip") or mp.get_mpattribute("Lua:RarHasFileWithExeExtension") or mp.get_mpattribute("Lua:SingleSuspiciousExtensionIn7z") or mp.get_mpattribute("Lua:SingleSuspiciousExtensionInACE")) then
      mp.set_mpattribute("MpForceScanArchives")
    end
    if ({
      [".doc"] = true,
      [".xls"] = true,
      [".rtf"] = true,
      [".docm"] = true,
      [".xlsm"] = true,
      [".ppam"] = true,
      [".pptm"] = true,
      [".ppsm"] = true,
      [".potm"] = true,
      [".jse"] = true,
      [".vbs"] = true,
      [".wsf"] = true,
      [".vbe"] = true,
      [".hta"] = true,
      [".js"] = true,
      [".mht"] = true,
      [".lnk"] = true,
      [".bat"] = true,
      [".ps1"] = true,
      [".zip"] = true,
      [".rar"] = true,
      [".7z"] = true,
      [".iso"] = true,
      [".arj"] = true,
      [".gz"] = true,
      [".ace"] = true,
      [".exe"] = true,
      [".scr"] = true,
      [".pif"] = true,
      [".jar"] = true
    })[mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):sub(-3)] == true or ({
      [".doc"] = true,
      [".xls"] = true,
      [".rtf"] = true,
      [".docm"] = true,
      [".xlsm"] = true,
      [".ppam"] = true,
      [".pptm"] = true,
      [".ppsm"] = true,
      [".potm"] = true,
      [".jse"] = true,
      [".vbs"] = true,
      [".wsf"] = true,
      [".vbe"] = true,
      [".hta"] = true,
      [".js"] = true,
      [".mht"] = true,
      [".lnk"] = true,
      [".bat"] = true,
      [".ps1"] = true,
      [".zip"] = true,
      [".rar"] = true,
      [".7z"] = true,
      [".iso"] = true,
      [".arj"] = true,
      [".gz"] = true,
      [".ace"] = true,
      [".exe"] = true,
      [".scr"] = true,
      [".pif"] = true,
      [".jar"] = true
    })[mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):sub(-4)] == true or ({
      [".doc"] = true,
      [".xls"] = true,
      [".rtf"] = true,
      [".docm"] = true,
      [".xlsm"] = true,
      [".ppam"] = true,
      [".pptm"] = true,
      [".ppsm"] = true,
      [".potm"] = true,
      [".jse"] = true,
      [".vbs"] = true,
      [".wsf"] = true,
      [".vbe"] = true,
      [".hta"] = true,
      [".js"] = true,
      [".mht"] = true,
      [".lnk"] = true,
      [".bat"] = true,
      [".ps1"] = true,
      [".zip"] = true,
      [".rar"] = true,
      [".7z"] = true,
      [".iso"] = true,
      [".arj"] = true,
      [".gz"] = true,
      [".ace"] = true,
      [".exe"] = true,
      [".scr"] = true,
      [".pif"] = true,
      [".jar"] = true
    })[mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):sub(-5)] == true then
      if (mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):sub(-4) == ".doc" or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE)):sub(-4) == ".xls") and true ~= mp.get_mpattribute("MHSTR:MacroInside") then
        return mp.CLEAN
      end
      return mp.LOWFI
    end
  end
end
return mp.CLEAN
