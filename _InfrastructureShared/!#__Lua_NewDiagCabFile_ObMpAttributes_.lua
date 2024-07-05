if mp.getfilename() ~= nil and mp.getfilename():lower():match("%.diagcab$") then
  return mp.INFECTED
end
return mp.CLEAN
