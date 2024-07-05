if pe.isdynamic_va(pevars.sigaddr) and mp.get_mpattribute("PEBMPAT:AntiEmuGetCopyOnWriteCount") then
  pe.set_regval(pe.REG_EAX, 4294967295)
  mp.set_mpattribute("PEBMPAT:AntiEmuChkCopyOnWriteCount")
end
return mp.CLEAN
