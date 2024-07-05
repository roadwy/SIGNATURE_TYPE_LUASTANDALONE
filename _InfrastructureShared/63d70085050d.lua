local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0.image_path)
  if string.find(L1_1, ":\\Windows\\system32\\cscript.exe", 2, true) or string.find(L1_1, ":\\program files\\rapid7\\insight agent\\components\\insight_agent\\.*\\ir_agent.exe", 2, false) then
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
