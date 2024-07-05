if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN then
  if string.lower(mp.getfilename()) == nil then
    return mp.CLEAN
  end
  if string.lower(mp.getfilename()):len() < 50 then
    return mp.CLEAN
  end
  if not string.lower(mp.getfilename()):find("\\downloads", 1, true) then
    return mp.CLEAN
  end
  if mp.getfilesize() > 1048576 then
    return mp.CLEAN
  end
  if string.lower(mp.getfilename()):match("(.+\\)([^\\]+)$") == nil then
    return mp.CLEAN
  end
  if string.lower(mp.getfilename()):match("(.+\\)([^\\]+)$"):len() > 40 and string.lower(mp.getfilename()):match("(.+\\)([^\\]+)$") ~= nil then
    if string.lower(mp.getfilename()):match("(.+\\)([^\\]+)$"):find("\\users\\[^\\]+\\downloads\\[0-9a-f]+\\") == nil then
      return mp.CLEAN
    end
    if string.lower(mp.getfilename()):match("(.+\\)([^\\]+)$"):match("\\downloads\\[0-9a-f]+\\") == nil or string.lower(mp.getfilename()):match("(.+\\)([^\\]+)$"):match("\\downloads\\[0-9a-f]+\\"):len() < 44 then
      return mp.CLEAN
    end
    mp.set_mpattribute("LUA:SuspFolderInDownloads.A")
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
      [".docx"] = true,
      [".xlsx"] = true,
      [".jse"] = true,
      [".vbs"] = true,
      [".wsf"] = true,
      [".vbe"] = true,
      [".hta"] = true,
      [".mht"] = true,
      [".lnk"] = true,
      [".bat"] = true,
      [".ps1"] = true,
      [".cmd"] = true,
      [".url"] = true,
      [".exe"] = true,
      [".scr"] = true,
      [".pif"] = true,
      [".dll"] = true
    })[string.lower(mp.getfilename()):match("(.+\\)([^\\]+)$"):sub(-4)] == true or ({
      [".doc"] = true,
      [".xls"] = true,
      [".rtf"] = true,
      [".docm"] = true,
      [".xlsm"] = true,
      [".ppam"] = true,
      [".pptm"] = true,
      [".ppsm"] = true,
      [".potm"] = true,
      [".docx"] = true,
      [".xlsx"] = true,
      [".jse"] = true,
      [".vbs"] = true,
      [".wsf"] = true,
      [".vbe"] = true,
      [".hta"] = true,
      [".mht"] = true,
      [".lnk"] = true,
      [".bat"] = true,
      [".ps1"] = true,
      [".cmd"] = true,
      [".url"] = true,
      [".exe"] = true,
      [".scr"] = true,
      [".pif"] = true,
      [".dll"] = true
    })[string.lower(mp.getfilename()):match("(.+\\)([^\\]+)$"):sub(-5)] == true then
      mp.set_mpattribute("LUA:SuspFileInSuspFolder.A")
    end
  end
end
return mp.CLEAN
