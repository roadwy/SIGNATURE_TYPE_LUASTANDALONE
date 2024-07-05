if pe.get_versioninfo() ~= nil then
  if ({
    ["IGOR_UI.exe"] = "",
    ["IGOR_Core.dll"] = "",
    ["IGOR.Interface.CLI.exe"] = ""
  })[pe.get_versioninfo().OriginalFilename] then
    return mp.INFECTED
  end
end
return mp.CLEAN
