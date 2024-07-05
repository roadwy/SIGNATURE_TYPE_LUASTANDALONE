if checkProductName("Components Package") then
  return mp.CLEAN
end
if checkProductName("Shared Library") then
  return mp.CLEAN
end
if checkProductName("Package Library") then
  return mp.CLEAN
end
if checkProductName("Google Analytics Sender") then
  return mp.CLEAN
end
if checkProductName("Google Analytics Package") then
  return mp.CLEAN
end
if checkProductName("Disk Defrag Portable") then
  return mp.CLEAN
end
return mp.INFECTED
