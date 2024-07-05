if mp.get_mpattribute("BM_LNK_FILE") and mp.get_mpattribute("Exploit:O97M/DDEDownloader.C.2") then
  return mp.INFECTED
end
return mp.CLEAN
