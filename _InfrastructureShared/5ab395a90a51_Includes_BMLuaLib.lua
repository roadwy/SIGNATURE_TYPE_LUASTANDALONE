if this_sigattrlog[1].matched and this_sigattrlog[1].utf8p2 ~= nil then
  bm_AddRelatedFileFromCommandLine(this_sigattrlog[1].utf8p2, nil, nil, 1)
end
return mp.INFECTED
