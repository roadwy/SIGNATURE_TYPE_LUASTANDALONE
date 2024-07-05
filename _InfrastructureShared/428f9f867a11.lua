if hstrlog[1].matched or hstrlog[2].matched then
  if hstrlog[1].matched and hstrlog[2].matched then
    return mp.CLEAN
  end
  if hstrlog[3].hitcount == 1 and hstrlog[4].hitcount == 1 then
    if mp.get_mpattribute("PACKED_WITH:(ActiveMime)") or mp.get_mpattribute("PACKED_WITH:(Base64)") then
      return mp.INFECTED
    end
    return mp.LOWFI
  end
end
return mp.CLEAN
