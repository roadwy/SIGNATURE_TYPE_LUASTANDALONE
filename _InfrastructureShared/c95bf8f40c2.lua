if pe.isdynamic_va(pevars.sigaddr) and pe.get_regval(pe.REG_EAX) == 1247748109 then
  mp.set_mpattribute("PEBMPAT:AntiEmuVirtualProtectLayout")
  pe.set_regval(pe.REG_EAX, 3047219186)
end
return mp.CLEAN
