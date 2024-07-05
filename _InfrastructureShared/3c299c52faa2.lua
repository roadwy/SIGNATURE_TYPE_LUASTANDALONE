if mp.readu_u32(headerpage, 1) ~= 1953651835 then
  return mp.CLEAN
end
return mp.INFECTED
