mp.set_mpattribute("HSTR:Worm:MSIL/Murkados.A")
if 3 <= ((hstrlog[1].matched or hstrlog[2].matched or hstrlog[3].matched) and 1 or 0) + ((hstrlog[4].matched or hstrlog[5].matched) and 1 or 0) + (hstrlog[6].matched and 1 or 0) + (hstrlog[7].matched and 1 or 0) then
  return mp.INFECTED
end
return mp.CLEAN
