if mp.getfilesize() > 589824 and mp.getfilesize() < 786432 and (mp.get_mpattribute("TEL:Trojan:Win32/Qakbot.E!sl1") or mp.get_mpattribute("TEL:Trojan:Win32/Qakbot.E!sl2")) then
  return mp.INFECTED
end
return mp.CLEAN
