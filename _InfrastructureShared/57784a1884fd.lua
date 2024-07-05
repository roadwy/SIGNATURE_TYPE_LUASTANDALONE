if peattributes.no_security == true and mp.get_mpattribute("TEL:TrojanDownloader:Win32/AdLoad.A!MSR") and mp.getfilesize() > 2424832 and mp.getfilesize() < 2621440 then
  return mp.INFECTED
end
return mp.LOWFI
