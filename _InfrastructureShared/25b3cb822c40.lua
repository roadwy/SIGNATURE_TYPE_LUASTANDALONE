local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 then
  if ({
    ["powershell.exe"] = true,
    ["wscript.exe"] = true,
    ["cscript.exe"] = true,
    ["mshta.exe"] = true,
    ["cmd.exe"] = true,
    ["rundll32.exe"] = true,
    ["regsvr32.exe"] = true,
    ["msbuild.exe"] = true,
    ["vbcscompiler.exe"] = true,
    ["csc.exe"] = true,
    ["python.exe"] = true,
    ["pythonw.exe"] = true,
    ["winword.exe"] = true,
    ["excel.exe"] = true,
    ["powerpnt.exe"] = true
  })[string.match(L0_0, "\\([^\\]+)$")] then
    return mp.INFECTED
  end
end
return mp.CLEAN
