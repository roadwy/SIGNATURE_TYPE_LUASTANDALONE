if peattributes.isexe and mp.get_mpattribute("SIGATTR:DelphiFile") then
  if hstrlog[1].hitcount > 10 then
    mp.set_mpattribute("HSTR:DelphiPacker.DummyCallsGT10")
  end
  if hstrlog[1].hitcount > 20 then
    mp.set_mpattribute("HSTR:DelphiPacker.DummyCallsGT20")
  else
    mp.set_mpattribute("HSTR:DelphiPacker.DummyCallsLE20")
  end
  if hstrlog[1].hitcount > 30 then
    mp.set_mpattribute("HSTR:DelphiPacker.DummyCallsGT30")
  else
    mp.set_mpattribute("HSTR:DelphiPacker.DummyCallsLE30")
  end
end
return mp.CLEAN
