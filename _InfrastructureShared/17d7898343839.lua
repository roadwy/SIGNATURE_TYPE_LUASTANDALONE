if peattributes.isvbpcode or peattributes.isvbnative then
  if mp.getfilesize() < 65536 then
    if mp.HSTR_WEIGHT >= 9 then
      if hstrlog[1].matched or hstrlog[2].matched or hstrlog[3].matched then
        return mp.INFECTED
      end
      mp.set_mpattribute("HSTR:Trojan:Win32/Rekilc.B_1")
      return mp.CLEAN
    else
      mp.set_mpattribute("HSTR:Trojan:Win32/Rekilc.B_2")
      return mp.CLEAN
    end
  else
    mp.set_mpattribute("HSTR:Program:Win32/SoftwareClicker.B")
    return mp.CLEAN
  end
end
return mp.CLEAN
