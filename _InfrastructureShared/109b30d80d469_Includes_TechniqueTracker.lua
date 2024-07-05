if this_sigattrlog[1].matched then
  if this_sigattrlog[1].utf8p1 ~= nil then
  end
elseif this_sigattrlog[2].matched then
  if this_sigattrlog[2].utf8p1 ~= nil then
  end
elseif this_sigattrlog[3].matched then
  if this_sigattrlog[3].utf8p1 ~= nil then
  end
elseif this_sigattrlog[4].matched then
  if this_sigattrlog[4].utf8p1 ~= nil then
  end
elseif this_sigattrlog[5].matched then
  if this_sigattrlog[5].utf8p1 ~= nil then
  end
elseif this_sigattrlog[6].matched and this_sigattrlog[6].utf8p1 ~= nil then
end
if this_sigattrlog[7].matched then
  if this_sigattrlog[7].utf8p1 ~= nil then
  end
elseif this_sigattrlog[8].matched then
  if this_sigattrlog[8].utf8p1 ~= nil then
  end
elseif this_sigattrlog[9].matched then
  if this_sigattrlog[9].utf8p1 ~= nil then
  end
elseif this_sigattrlog[10].matched then
  if this_sigattrlog[10].utf8p1 ~= nil then
  end
elseif this_sigattrlog[11].matched then
  if this_sigattrlog[11].utf8p1 ~= nil then
  end
elseif this_sigattrlog[12].matched and this_sigattrlog[12].utf8p1 ~= nil then
end
if this_sigattrlog[6].utf8p1 == this_sigattrlog[12].utf8p1 then
  return mp.CLEAN
end
if IsDetectionThresholdMet("BM") then
  TrackPidAndTechniqueBM("BM", "T1059", "commandscripttheshold")
  return mp.INFECTED
end
return mp.CLEAN
