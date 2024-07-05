if mp.shr32(pehdr.TimeDateStamp, 22) and mp.shl32(pehdr.TimeDateStamp, 22) == 0 then
  mp.changedetectionname(805306402)
end
return mp.INFECTED
