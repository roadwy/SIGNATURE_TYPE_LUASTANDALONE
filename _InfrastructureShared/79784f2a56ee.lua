if mp.get_mpattribute("MpHasExpensiveLoop") and peattributes.epatstartentrysect then
  return mp.SUSPICIOUS
end
return mp.LOWFI
