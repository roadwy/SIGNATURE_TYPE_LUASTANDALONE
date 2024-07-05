if not mp.get_mpattribute("STATIC:TrojanDownloader:Script/AHCoinMiner.A!AHK") then
  return mp.CLEAN
end
if mp.getfilename(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)):find("^%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%l%.exe$") == 1 then
  return mp.INFECTED
end
return mp.CLEAN
