if hstrlog[6].matched then
  mp.set_mpattribute("HSTR:Virus:Win64/Viknok.gen!A")
  return mp.CLEAN
end
if hstrlog[7].matched then
  mp.set_mpattribute("HSTR:Virus:Win64/Viknok.gen!B")
  return mp.CLEAN
end
if hstrlog[8].matched then
  mp.set_mpattribute("HSTR:Virus:Win64/Viknok.gen!C")
  return mp.CLEAN
end
return mp.INFECTED
