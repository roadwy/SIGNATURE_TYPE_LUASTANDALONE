local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 ~= nil and (string.sub(L0_0, -3) == ".js" or string.sub(L0_0, -4) == ".jse" or string.sub(L0_0, -4) == ".vbs" or string.sub(L0_0, -4) == ".vbe" or string.sub(L0_0, -4) == ".wsf") and (mp.get_mpattributesubstring("JS/Obfus") or mp.get_mpattributesubstring("SCPT:Jenxcus") or mp.get_mpattributesubstring("VBS/Obfus") or mp.get_mpattributesubstring("SCPT:Kira") or mp.get_mpattributesubstring("SCPT:Obfusc") or mp.get_mpattributesubstring("SCPT:SimpleAsciiObfuscator") or mp.get_mpattributesubstring("JS/Obfuscator") or mp.get_mpattributesubstring("SWF/Obfuscator") or mp.get_mpattributesubstring("SCPT:charcode.A") or mp.get_mpattributesubstring("ObfusHead") or mp.get_mpattributesubstring("SCRIPT:StringFromCharCode.A") or mp.get_mpattributesubstring("VBS/Obfuscator")) then
  return mp.INFECTED
end
return mp.CLEAN
