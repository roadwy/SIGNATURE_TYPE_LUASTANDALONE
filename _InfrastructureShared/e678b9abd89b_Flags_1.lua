if mp.HSTR_WEIGHT >= 11 then
  if hstrlog[2].matched then
    mp.changedetectionname(805306452)
  elseif hstrlog[3].matched then
    mp.changedetectionname(805306453)
  end
  return mp.INFECTED
elseif mp.HSTR_WEIGHT == 10 and hstrlog[4].matched and hstrlog[5].matched then
  mp.set_mpattribute("HSTR:PossibleGamarue")
end
return mp.CLEAN
