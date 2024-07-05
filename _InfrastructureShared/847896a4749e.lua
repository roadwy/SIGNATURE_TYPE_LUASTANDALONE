if (hstrlog[1].matched or hstrlog[2].matched) and (hstrlog[3].matched or hstrlog[4].matched) and (hstrlog[5].matched or hstrlog[6].matched or hstrlog[7].matched) and mp.get_mpattribute("reads_vdll_code") then
  return mp.INFECTED
end
return mp.LOWFI
