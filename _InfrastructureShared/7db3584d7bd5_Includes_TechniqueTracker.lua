if this_sigattrlog[3].matched then
elseif this_sigattrlog[4].matched then
elseif this_sigattrlog[5].matched then
else
end
if this_sigattrlog[6].utf8p1:match("/Users/.*/Library/") ~= nil then
  TrackPidAndTechniqueBM("BM", "T1546.004", "profile-persistence")
  return mp.INFECTED
end
return mp.CLEAN
