if mp.get_mpattribute("AGGR:CombinedJavaClass") then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT == 4 then
  return mp.LOWFI
end
return mp.CLEAN
