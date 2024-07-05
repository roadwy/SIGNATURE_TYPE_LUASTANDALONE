if pe.isdynamic_va(pevars.sigaddr) then
  pe.set_regval(pe.REG_EAX, 0)
  mp.set_mpattribute("PEBMPAT:Simda:AntiEmuTimeStampCheck")
end
return mp.CLEAN
