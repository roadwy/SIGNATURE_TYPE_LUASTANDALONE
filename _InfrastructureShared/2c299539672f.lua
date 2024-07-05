if mp.get_mpattribute("BM_TORRENT_FILE") and string.find(string.lower(mp.getfilename()), "msoffice", 1, true) ~= nil and string.find(string.lower(mp.getfilename()), "activate", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
