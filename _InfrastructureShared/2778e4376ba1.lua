if pehdr.Machine == 34404 then
  pe.set_peattribute("deep_analysis", true)
  pe.reemulate()
  return mp.INFECTED
end
return mp.CLEAN
