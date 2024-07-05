if mp.getfilesize() >= 516096 and mp.getfilesize() <= 524288 and mp.get_mpattribute("TEL:Trojan:Win32/Emotet.PAC!Lowfi") then
  return mp.INFECTED
end
return mp.CLEAN
