if mp.get_mpattribute("BM_XML_FILE") and not mp.get_mpattribute("SCPT:TrojanDownloader:O97M/Ploty_excl1.A") and not mp.get_mpattribute("SCPT:TrojanDownloader:O97M/Ploty_excl2.A") then
  return mp.INFECTED
end
return mp.LOWFI
