if checkProductName("TweakBit PCRepairKit") == true and checkProductVersion("LT", "1.8.3.40") == true then
  return mp.INFECTED
end
if checkProductName("TweakBit Driver Updater") == true and checkProductVersion("LT", "2.0.1.12") == true then
  return mp.INFECTED
end
if checkProductName("Driver Updater") == true and checkFileVersion("LT", "2.0.0.4") == true then
  return mp.INFECTED
end
if checkProductName("TweakBit PCSuite") == true and checkProductVersion("LT", "10.0.23.0") == true then
  return mp.INFECTED
end
if checkProductName("PCRepairKit") == true and checkFileVersion("LT", "1.8.3.40") == true then
  return mp.INFECTED
end
if checkProductName("TweakBit PCBooster") == true and checkProductVersion("LT", "1.8.4.2") == true then
  return mp.INFECTED
end
return mp.CLEAN
