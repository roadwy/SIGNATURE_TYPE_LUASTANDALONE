if mp.GetParentProcInfo() ~= nil then
  if ({
    ["winword.exe"] = true,
    ["excel.exe"] = true,
    ["powerpnt.exe"] = true,
    ["outlook.exe"] = true,
    ["olk.exe"] = true,
    ["acrord32.exe"] = true,
    ["foxit.exe"] = true,
    ["thunderbird.exe"] = true
  })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
    return mp.INFECTED
  end
  if hstrlog[3].matched then
    if ({
      ["powershell.exe"] = true,
      ["pwsh.exe"] = true,
      ["cmd.exe"] = true,
      ["cscript.exe"] = true,
      ["wscript.exe"] = true,
      ["mshta.exe"] = true,
      ["chrome.exe"] = true,
      ["msedge.exe"] = true,
      ["firefox.exe"] = true,
      ["opera.exe"] = true,
      ["iexplore.exe"] = true,
      ["brave.exe"] = true,
      ["runtimebroker.exe"] = true
    })[string.lower(mp.GetParentProcInfo().image_path):match("([^\\]+)$")] then
      return mp.INFECTED
    end
  end
end
return mp.LOWFI
