if mp.getfilename():lower():match("\\poc.js$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
