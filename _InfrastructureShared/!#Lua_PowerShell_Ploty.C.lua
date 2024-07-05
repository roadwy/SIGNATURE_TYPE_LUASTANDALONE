local L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L0_0 = L0_0("SCRIPT:PowerShell/Ploty.C!head")
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.lower
  L0_0 = L0_0(mp.getfilename())
  if string.find(L0_0, "%->%[powershellb64%]%->%(base64%)") then
    return mp.INFECTED
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
