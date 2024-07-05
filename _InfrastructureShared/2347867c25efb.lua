if peattributes.dt_error_not_enough_memory then
  pe.set_peattribute("enable_vmm_grow", true)
  pe.reemulate()
end
return mp.INFECTED
