local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0:len() < 5 then
  return mp.CLEAN
end
for _FORV_5_ = 1, #{
  "^deedee%.exe$",
  "^tm%(.+%)11%d%d%.exe$"
} do
  if L0_0:find(({
    "^deedee%.exe$",
    "^tm%(.+%)11%d%d%.exe$"
  })[_FORV_5_]) then
    return mp.INFECTED
  end
end
return _FOR_.CLEAN
