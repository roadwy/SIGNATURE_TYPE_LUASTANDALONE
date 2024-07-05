if mp.HSTR_WEIGHT >= 100 then
  return mp.INFECTED
elseif mp.HSTR_WEIGHT >= 10 and mp.HSTR_WEIGHT < 50 then
  mp.changedetectionname(805306522)
  return mp.INFECTED
elseif mp.HSTR_WEIGHT > 1 then
  mp.set_mpattribute("SLF:Ransom:Win32/Wadhrama.A")
end
return mp.CLEAN
