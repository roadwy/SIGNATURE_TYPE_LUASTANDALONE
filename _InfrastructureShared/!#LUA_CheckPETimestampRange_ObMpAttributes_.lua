if pehdr.TimeDateStamp ~= 0 then
  if pehdr.TimeDateStamp > 1532653568 then
    mp.set_mpattribute("Lua:TimeStampRange2")
  end
  if pehdr.TimeDateStamp > 1409613824 then
    mp.set_mpattribute("Lua:TimeStampRange1")
  end
end
return mp.CLEAN
