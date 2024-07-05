if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == 18 and mp.getfilename(mp.FILEPATH_QUERY_FULL) == "/tmp/e6c1b6df-5c4a-44ef-8453-2aed16108a33.txt" then
  return mp.INFECTED
end
return mp.CLEAN
