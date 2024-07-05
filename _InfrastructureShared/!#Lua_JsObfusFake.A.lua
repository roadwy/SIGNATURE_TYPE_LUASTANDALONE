local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 ~= nil then
  L0_0 = string.lower(L0_0)
  if string.sub(L0_0, -3) == ".js" or string.sub(L0_0, -4) == ".jse" or string.sub(L0_0, -4) == ".vbs" or string.sub(L0_0, -4) == ".vbe" or string.sub(L0_0, -4) == ".wsf" then
    if mp.get_mpattributesubstring("SCPT:Trojan:JS/PikaBot.BX") then
    end
    if mp.get_mpattributesubstring("SCPT:JS/AsrobfusWscrExec") then
    end
    if mp.get_mpattributesubstring("SCRIPT:ToStringCode.A") then
    end
    if mp.get_mpattributesubstring("SCPT:VBSSplit") then
    end
    if 0 + 2 + 2 + 1 + 1 >= 5 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
