if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
if (hstrlog[3].matched or hstrlog[4].matched) and mp.get_mpattribute("pea_genpacked") then
  return mp.INFECTED
end
return mp.CLEAN
