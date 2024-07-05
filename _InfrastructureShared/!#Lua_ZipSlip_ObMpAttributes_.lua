if mp.getfilename():lower():match("%.(%w+)%->(.*)$") == nil or mp.getfilename():lower():match("%.(%w+)%->(.*)$") == nil then
  return mp.CLEAN
end
if ({
  ["7z"] = "Lua:FileIn7z",
  ["apk"] = "Lua:FileInApk",
  ["cpio"] = "Lua:FileInCpio",
  ["jar"] = "Lua:FileInJar",
  ["rar"] = "Lua:FileInRar",
  ["tar"] = "Lua:FileInTar",
  ["war"] = "Lua:FileInWar",
  ["zip"] = "Lua:FileInZip",
  ["iso"] = "Lua:FileInIso",
  ["tgz"] = "Lua:FileInTarGzip"
})[mp.getfilename():lower():match("%.(%w+)%->(.*)$")] ~= nil then
  mp.set_mpattribute(({
    ["7z"] = "Lua:FileIn7z",
    ["apk"] = "Lua:FileInApk",
    ["cpio"] = "Lua:FileInCpio",
    ["jar"] = "Lua:FileInJar",
    ["rar"] = "Lua:FileInRar",
    ["tar"] = "Lua:FileInTar",
    ["war"] = "Lua:FileInWar",
    ["zip"] = "Lua:FileInZip",
    ["iso"] = "Lua:FileInIso",
    ["tgz"] = "Lua:FileInTarGzip"
  })[mp.getfilename():lower():match("%.(%w+)%->(.*)$")])
else
  return mp.CLEAN
end
if mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("../", 1, true) or mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("..\\", 1, true) then
  mp.set_mpattribute("Lua:DirPathTraversal")
end
if mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("../../", 1, true) or mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("..\\..\\", 1, true) then
  mp.set_mpattribute("Lua:DirPathTraversal2plus")
end
if mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("\\windows\\", 1, true) or mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("/windows/", 1, true) then
  mp.set_mpattribute("Lua:DirPathWindows")
end
if mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("\\system32\\", 1, true) or mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("/system32/", 1, true) then
  mp.set_mpattribute("Lua:DirPathSystem32")
end
if mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("\\microsoft\\windows\\start menu\\startup\\", 1, true) or mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("/microsoft/windows/start menu/startup/", 1, true) then
  mp.set_mpattribute("Lua:DirPathStartup")
end
if mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("\\programdata\\", 1, true) or mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("/programdata/", 1, true) then
  mp.set_mpattribute("Lua:DirPathProgramData")
end
if mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("\\program files\\", 1, true) or mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("/program files/", 1, true) then
  mp.set_mpattribute("Lua:DirPathProgramFiles")
end
if mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("\\program files (x86)\\", 1, true) or mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("/program files (x86)/", 1, true) then
  mp.set_mpattribute("Lua:DirPathProgramFiles86")
end
if mp.getfilename():lower():match("%.(%w+)%->(.*)$") == "iso" and not mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("\\", 2, true) and not mp.getfilename():lower():match("%.(%w+)%->(.*)$"):find("/", 2, true) then
  mp.set_mpattribute("Lua:FileOnIsoRoot")
end
return mp.CLEAN
