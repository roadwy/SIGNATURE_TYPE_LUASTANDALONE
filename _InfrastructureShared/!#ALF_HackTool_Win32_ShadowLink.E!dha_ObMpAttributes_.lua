if #mp.enum_mpattributesubstring("HEUR:ShadowLink") >= 3 and mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) ~= nil and mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):find("torrc", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN
