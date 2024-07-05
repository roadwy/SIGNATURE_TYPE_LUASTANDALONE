if pcall(mp.getfilename, mp.FILEPATH_QUERY_FNAME) then
  if pcall(mp.getfilename, mp.FILEPATH_QUERY_FNAME):sub(1, 4) ~= "res_" then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
