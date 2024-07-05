if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  if ({
    [".doc"] = "",
    [".docm"] = "",
    [".dotm"] = "",
    [".dot"] = "",
    [".xls"] = "",
    [".xlsm"] = "",
    [".ppt"] = "",
    [".pptm"] = ""
  })[mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_CNAME, mp.FILEPATH_QUERY_LOWERCASE)):sub(-5):sub(-4)] ~= nil or ({
    [".doc"] = "",
    [".docm"] = "",
    [".dotm"] = "",
    [".dot"] = "",
    [".xls"] = "",
    [".xlsm"] = "",
    [".ppt"] = "",
    [".pptm"] = ""
  })[mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_CNAME, mp.FILEPATH_QUERY_LOWERCASE)):sub(-5)] ~= nil then
    return mp.INFECTED
  end
end
return mp.CLEAN
