mp.set_mpattribute("HSTR:Win32/Neurevt_loader")
if mp.readu_u32(epcode, 1) == 1374456661 and mp.readu_u32(epcode, 5) == 3187044 and mp.readu_u32(epcode, 9) == 1448280064 and mp.readu_u32(epcode, 13) == 108314757 and mp.readu_u32(epcode, 17) == 16939136 and mp.readu_u32(epcode, 21) == 1703096436 and mp.readu_u32(epcode, 25) == 4226285820 then
  return mp.INFECTED
end
return mp.CLEAN
