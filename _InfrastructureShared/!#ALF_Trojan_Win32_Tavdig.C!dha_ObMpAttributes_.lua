if pcall(mp.getfilename, mp.FILEPATH_QUERY_FNAME) then
  if #pcall(mp.getfilename, mp.FILEPATH_QUERY_FNAME) ~= 10 then
    return mp.CLEAN
  end
  if pcall(mp.getfilename, mp.FILEPATH_QUERY_FNAME):sub(1, 2) ~= "~D" then
    return mp.CLEAN
  end
  if mp.readheader(0, 8) == "[CONFIG]" then
    return mp.INFECTED
  end
end
return mp.CLEAN
