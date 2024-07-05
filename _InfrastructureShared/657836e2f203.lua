mp.set_mpattribute("HSTR:ZwangiExe")
if 3 <= (hstrlog[1].matched and 1 or 0) + (hstrlog[2].matched and 1 or 0) + (hstrlog[3].matched and 1 or 0) then
  return mp.INFECTED
end
return mp.CLEAN
