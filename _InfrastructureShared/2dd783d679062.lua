if peattributes.isdll and peattributes.hasexports and mp.get_mpattribute("ChangeEPtoExport") and (hstrlog[1].matched or hstrlog[2].matched or hstrlog[3].matched or hstrlog[4].matched) and (hstrlog[5].matched or hstrlog[6].matched or hstrlog[7].matched or hstrlog[8].matched) and (hstrlog[9].matched or hstrlog[10].matched or hstrlog[11].matched or hstrlog[12].matched) then
  return mp.SUSPICIOUS
end
return mp.CLEAN
