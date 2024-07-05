mp.set_mpattribute("HSTR:Adware:Win32/Lollipop")
if 3 <= ((hstrlog[1].matched or hstrlog[2].matched) and 1 or 0) + ((hstrlog[3].matched or hstrlog[4].matched or hstrlog[5].matched or hstrlog[6].matched or hstrlog[7].matched or hstrlog[8].matched) and 1 or 0) + ((hstrlog[9].matched or hstrlog[10].matched) and 1 or 0) + ((hstrlog[11].matched or hstrlog[12].matched or hstrlog[13].matched or hstrlog[14].matched or hstrlog[15].matched) and 1 or 0) + (hstrlog[16].matched and 1 or 0) + ((hstrlog[17].matched or hstrlog[18].matched or hstrlog[19].matched or hstrlog[20].matched) and 1 or 0) + (hstrlog[21].matched and 1 or 0) + (hstrlog[22].matched and 1 or 0) then
  return mp.INFECTED
end
return mp.CLEAN
