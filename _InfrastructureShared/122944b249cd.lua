if mp.getfilesize() == nil or mp.getfilesize() > 500 then
  return mp.CLEAN
end
if headerpage == nil then
  return mp.CLEAN
end
if mp.GetBruteMatchData() == nil or mp.GetBruteMatchData().match_offset == nil then
  return mp.CLEAN
end
if mp.GetBruteMatchData().match_offset >= mp.getfilesize() - 12 and headerpage[mp.getfilesize()] == 0 then
  return mp.INFECTED
end
return mp.CLEAN
