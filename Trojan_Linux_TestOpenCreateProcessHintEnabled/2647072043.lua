if mp.getfilename(mp.FILEPATH_QUERY_FULL) == "/tmp/2813dbf5-607f-409d-85a7-3b172cb14f19" and mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == 2 and mp.get_contextdata(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) == true then
  return mp.INFECTED
end
return mp.CLEAN
