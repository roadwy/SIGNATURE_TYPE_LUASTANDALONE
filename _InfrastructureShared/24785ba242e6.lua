if not mp.get_mpattribute("pea_isdll") then
  return mp.CLEAN
end
if pehdr.AddressOfEntryPoint + pehdr.ImageBase == hstrlog[1].VA then
  if pe.get_exports() > 2 then
    mp.set_mpattribute("do_exhaustivehstr_rescan")
  end
  mp.set_mpattribute("BorlandDelphiDllEntryPoint")
end
return mp.INFECTED
