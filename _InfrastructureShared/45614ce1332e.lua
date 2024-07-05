if pesecs[4].Name == ".rsrc" and mp.bitand(pesecs[4].Characteristics, 3221487648) == 3221487648 then
  return mp.INFECTED
end
mp.set_mpattribute("HSTR:Win32/Nabucur.01")
return mp.CLEAN
