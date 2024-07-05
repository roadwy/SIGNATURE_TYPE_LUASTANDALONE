if peattributes.isdll and peattributes.hasexports then
  mp.set_mpattribute("ChangeEPtoExport")
  mp.set_mpattribute("HSTR:TrojanProxy:Win32/Bunitu.F")
  return mp.LOWFI
end
return mp.CLEAN
