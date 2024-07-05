if mp.get_contextdata(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and mp.GetMOTWZone() >= 3 and mp.getfilesize() <= 4194304 then
  if ({
    [".exe"] = true,
    [".dll"] = true,
    [".msi"] = true,
    [".sys"] = true,
    [".quarantine"] = true
  })[mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):sub(-4)] == true or ({
    [".exe"] = true,
    [".dll"] = true,
    [".msi"] = true,
    [".sys"] = true,
    [".quarantine"] = true
  })[mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):sub(-11)] == true then
    return mp.CLEAN
  end
  mp.set_mpattribute("LUA:SuspExtExeWithMotw.A")
end
return mp.CLEAN
