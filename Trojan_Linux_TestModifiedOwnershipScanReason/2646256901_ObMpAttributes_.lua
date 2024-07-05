if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == 19 and mp.getfilename(mp.FILEPATH_QUERY_FULL) == "/tmp/4f9c77e0-4aba-4143-894e-4e6241443435.txt" then
  return mp.INFECTED
end
return mp.CLEAN
