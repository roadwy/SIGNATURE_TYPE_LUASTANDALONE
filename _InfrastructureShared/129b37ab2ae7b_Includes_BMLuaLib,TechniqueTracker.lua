if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil or this_sigattrlog[2].matched and this_sigattrlog[2].utf8p2 ~= nil or this_sigattrlog[3].matched and this_sigattrlog[3].utf8p2 ~= nil or this_sigattrlog[4].matched and this_sigattrlog[4].utf8p2 ~= nil then
  TrackPidAndTechniqueBM("BM", "T1489", "Impact_ServiceStop_Mysql")
end
return mp.CLEAN
