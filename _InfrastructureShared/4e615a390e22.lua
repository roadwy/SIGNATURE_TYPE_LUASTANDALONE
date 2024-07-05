if (hstrlog[1].matched or hstrlog[2].matched) and hstrlog[3].matched and mp.HSTR_CALLER_SMS == mp.GetHSTRCallerId() then
  return mp.INFECTED
end
return mp.CLEAN
