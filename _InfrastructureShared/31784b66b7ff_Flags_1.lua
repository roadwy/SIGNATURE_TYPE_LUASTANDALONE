if pesecs[1].VirtualSize > 851968 and pesecs[1].VirtualSize < 983040 and pesecs[3].VirtualSize > 1769472 and pesecs[3].VirtualSize < 2031616 then
  mp.changedetectionname(186)
  return mp.INFECTED
end
return mp.SUSPICIOUS
