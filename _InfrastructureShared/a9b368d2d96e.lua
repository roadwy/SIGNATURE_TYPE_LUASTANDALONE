local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = {
    "\\cmd.exe",
    "\\cscript.exe",
    "\\mshta.exe",
    "\\powershell.exe",
    "\\pwsh.exe",
    "\\regsvr32.exe",
    "\\rundll32.exe",
    "\\wscript.exe"
  }
  for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
    if L1_1:sub(-#_FORV_7_) == _FORV_7_ then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
