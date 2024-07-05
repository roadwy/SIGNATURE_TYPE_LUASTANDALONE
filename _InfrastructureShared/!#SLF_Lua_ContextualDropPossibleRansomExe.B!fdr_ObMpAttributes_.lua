if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and mp.get_contextdata(mp.CONTEXT_DATA_NEWLYCREATEDHINT) == true then
  if not peattributes.isexe then
    return mp.CLEAN
  end
  if peattributes.isdriver == true then
    return mp.CLEAN
  end
  if peattributes.no_security == false or peattributes.no_exports == false then
    return mp.CLEAN
  end
  if mp.getfilesize() >= 32768 and mp.getfilesize() <= 524288 then
    if mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("\\temp\\", 1, true) == nil and mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("\\desktop\\", 1, true) == nil and mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("\\downloads\\", 1, true) == nil then
      return mp.CLEAN
    end
    if ({
      ["pitupi20.exe"] = true,
      ["build.exe"] = true,
      ["rcfcngzxx.exe"] = true,
      ["galaperidol8.exe"] = true,
      ["bruhadson8.exe"] = true,
      ["miniramon8.exe"] = true
    })[mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))] or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("^skm_c%x+.exe$") then
      return mp.INFECTED
    end
  elseif mp.getfilesize() >= 65536 and mp.getfilesize() <= 196608 then
    if pevars.epsec ~= 1 or pehdr.NumberOfSections ~= 4 then
      return mp.CLEAN
    end
    if mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("\\temp\\", 1, true) == nil and mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("\\downloads\\", 1, true) == nil then
      return mp.CLEAN
    end
    if mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("^chrome font[ %w%.]*%.exe$") ~= nil or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("^%d%d%d%d%d%d%-%d%d%d%d%d%d%d%d%d%d%.exe$") ~= nil or mp.getfilename(mp.bitor(mp.bitor(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE)):find("^%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%x%.exe$") ~= nil then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
