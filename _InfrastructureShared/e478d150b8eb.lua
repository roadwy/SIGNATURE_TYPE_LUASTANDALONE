local L0_0, L1_1
L0_0 = pehdr
L0_0 = L0_0.DataDirectory
L1_1 = pe
L1_1 = L1_1.IMAGE_DIRECTORY_ENTRY_SECURITY
L0_0 = L0_0[L1_1]
L0_0 = L0_0.RVA
if L0_0 == 0 then
  L1_1 = peattributes
  L1_1 = L1_1.isdll
  if not L1_1 then
    L1_1 = peattributes
    L1_1 = L1_1.isexe
  elseif L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(mp.getfilename())
    if L1_1:find("\\windows\\", 1, true) or L1_1:find(".wim", 1, true) or L1_1:find(".cab", 1, true) then
      return mp.CLEAN
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
