local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 ~= nil then
  if L0_0:match("%->.+/") or L0_0:match("%->.+\\") or L0_0:match("%->.+%->") then
    return mp.CLEAN
  end
  if string.sub(L0_0, -3) == ".js" or string.sub(L0_0, -4) == ".jse" or string.sub(L0_0, -4) == ".vbs" or string.sub(L0_0, -4) == ".vbe" or string.sub(L0_0, -4) == ".wsf" then
    if mp.get_mpattributesubstring("SCPT:JS/Obfus") or mp.get_mpattributesubstring("SCPT:TrojanDownloader:JS") or mp.get_mpattributesubstring("SCPT:Trojan:JS/Obfuse") or mp.get_mpattributesubstring("SCPT:TrojanDropper:JS/Obfuse") then
    end
    if mp.get_mpattributesubstring("SCPT:Jenxcus") then
    end
    if mp.get_mpattributesubstring("VBS/Obfus") then
    end
    if mp.get_mpattributesubstring("SCPT:Kira") or mp.get_mpattributesubstring("SCPT:JS/HtmlSmuggling") then
    end
    if mp.get_mpattributesubstring("SCPT:Obfusc") and not mp.get_mpattributesubstring("SCPT:Obfuscator.RandomInput") then
    end
    if mp.get_mpattributesubstring("SCPT:SimpleAsciiObfuscator") then
    end
    if mp.get_mpattributesubstring("SWF/Obfuscator") or mp.get_mpattributesubstring("SCPT:JS/SplitFunc.A") then
    end
    if mp.get_mpattributesubstring("SCPT:charcode.A") or mp.get_mpattributesubstring("SCPT:JS/StringFromCharCodeCharCodeAt") or mp.get_mpattributesubstring("SCRIPT:StringFromCharCode.A") then
    end
    if mp.get_mpattributesubstring("VBS/Obfuscator") then
    end
    if mp.get_mpattributesubstring("SCPT:JS/parseInt") then
    end
    if mp.get_mpattributesubstring("SCPT:JS/PushShift") then
    end
    if mp.get_mpattributesubstring("SCPT:Obfuscator.LongVariableName.A") then
    end
    if mp.get_mpattributesubstring("TrojanDownloader:JS/Donvibs") and not mp.get_mpattributesubstring("TrojanDownloader:JS/Donvibs.EH!atb01") or mp.get_mpattributesubstring("SCPT:JS/Base64Func.A") then
    end
    if mp.get_mpattributesubstring("SCRIPT:TrojanDownloader:JS/Nemucod") or mp.get_mpattributesubstring("SCPT:JS/Nemucod") or mp.get_mpattributesubstring("SCPT:JS/Gootkit") then
    end
    if mp.get_mpattributesubstring("TrojanDownloader:HTML/Obfuse") or mp.get_mpattributesubstring("TrojanDownloader:JS/Obfuse") then
    end
    if mp.get_mpattributesubstring("Scpt:Trojan:JS/GootLoader") or mp.get_mpattributesubstring("SCPT:TrojanDownloader:O97M/Qakbot") then
    end
    if mp.get_mpattributesubstring("SCPT:Trojan:JS/PikaBot.BX") or mp.get_mpattributesubstring("SCPT:JS/AsrobfusWscrExec") then
    end
    if 0 + 1 + 2 + 1 + 1 + 2 + 2 + 1 + 2 + 2 + 2 + 2 + 2 + 1 + 1 + 1 + 2 + 1 >= 6 then
      mp.set_mpattribute("Lua:ObfusJsVbs.D")
    end
    if 0 + 1 + 2 + 1 + 1 + 2 + 2 + 1 + 2 + 2 + 2 + 2 + 2 + 1 + 1 + 1 + 2 + 1 >= 3 then
      mp.set_mpattribute("Lua:ObfusJsVbs.C")
    end
    if 0 + 1 + 2 + 1 + 1 + 2 + 2 + 1 + 2 + 2 + 2 + 2 + 2 + 1 + 1 + 1 + 2 + 1 >= 4 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
