local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
for _FORV_5_ = 1, #{
  "payment proof"
} do
  if string.find(L0_0, ({
    "payment proof"
  })[_FORV_5_], 1, true) ~= nil then
    mp.set_mpattribute("Lua:SuspiciousMSILfilename")
    return mp.LOWFI
  end
end
for _FORV_6_ = 1, #{
  "payment.proof",
  "booking.+confirmation"
} do
  if string.find(L0_0, ({
    "payment.proof",
    "booking.+confirmation"
  })[_FORV_6_]) ~= nil then
    mp.set_mpattribute("Lua:SuspiciousMSILfilename")
    return mp.LOWFI
  end
end
return _FOR_.CLEAN
