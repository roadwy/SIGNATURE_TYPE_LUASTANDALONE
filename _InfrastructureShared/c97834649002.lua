if mp.getfilesize() < 290000 then
  pe.set_peattribute("deep_analysis", true)
  pe.reemulate()
  return mp.INFECTED
end
return mp.CLEAN
