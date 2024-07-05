if peattributes.isdll and peattributes.hasexports then
  mp.set_mpattribute("ChangeEPtoExport")
end
return mp.INFECTED
