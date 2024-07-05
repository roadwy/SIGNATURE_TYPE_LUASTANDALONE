if mp.getfilesize() <= 102400 then
  if hstrlog[1].matched or hstrlog[2].matched or hstrlog[3].matched or hstrlog[4].matched or hstrlog[5].matched or hstrlog[6].matched or hstrlog[7].matched or hstrlog[8].matched or hstrlog[9].matched then
  end
  if hstrlog[10].matched or hstrlog[11].matched or hstrlog[12].matched or hstrlog[13].matched then
  end
  if hstrlog[14].matched or hstrlog[15].matched or hstrlog[16].matched or hstrlog[17].matched or hstrlog[18].matched then
  end
  if hstrlog[19].matched or hstrlog[20].matched or hstrlog[21].matched or hstrlog[22].matched or hstrlog[23].matched then
  end
  if hstrlog[24].matched then
  end
  if 0 + 1 + 1 + 1 + 1 + 1 >= 3 or 1 + 1 >= 2 then
    if 0 then
      return mp.INFECTED
    end
    if mp.get_mpattribute("SIGATTR:Trojan:Win32/Figyek.A") then
      return mp.SUSPICIOUS
    end
  end
  if mp.getfilesize() == 77824 or 1 + 1 == 1 then
    mp.set_mpattribute("HSTR:Trojan:Win32/Figyek.A.1")
    return mp.CLEAN
  end
end
if 3 <= mp.HSTR_WEIGHT then
  mp.set_mpattribute("HSTR:Trojan:Win32/Figyek.A.2")
end
return mp.CLEAN
