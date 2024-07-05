mp.set_mpattribute("HSTR:ZwangiDll")
if 3 <= ((hstrlog[1].matched or hstrlog[2].matched or hstrlog[3].matched or hstrlog[4].matched or hstrlog[5].matched or hstrlog[6].matched or hstrlog[7].matched) and 1 or 0) + ((hstrlog[8].matched or hstrlog[9].matched or hstrlog[10].matched or hstrlog[11].matched or hstrlog[12].matched or hstrlog[13].matched) and 1 or 0) + ((hstrlog[14].matched or hstrlog[15].matched) and 1 or 0) + (hstrlog[16].matched and 1 or 0) then
  return mp.INFECTED
end
return mp.CLEAN
