local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil or string.len(L0_0) < 1 then
  return mp.CLEAN
end
if string.find(L0_0, "\\internet explorer\\", 1, true) or string.find(L0_0, "\\brave-browser\\", 1, true) or string.find(L0_0, "yandexbrowser", 1, true) or string.find(L0_0, "\\mozilla firefox\\", 1, true) or string.find(L0_0, "\\opera", 1, true) or string.find(L0_0, "\\safari\\", 1, true) or string.find(L0_0, "\\sogouexplorer\\", 1, true) or string.find(L0_0, "\\qqbrowser\\", 1, true) or string.find(L0_0, "\\2345explorer\\", 1, true) or string.find(L0_0, "360", 1, true) or string.find(L0_0, "browser", 1, true) or string.find(L0_0, "chrome", 1, true) or string.find(L0_0, "sketchup", 1, true) or string.find(L0_0, "mysql", 1, true) or string.find(L0_0, "proxy", 1, true) or string.find(L0_0, "whale", 1, true) or string.find(L0_0, "maxthon", 1, true) or string.find(L0_0, "sfive", 1, true) or string.find(L0_0, "edge", 1, true) or string.find(L0_0, "\\chromium\\", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
