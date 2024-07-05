local L0_0, L1_1
L0_0 = peattributes
L0_0 = L0_0.isexe
if L0_0 then
  L0_0 = peattributes
  L0_0 = L0_0.is_delphi
  if L0_0 then
    L0_0 = pesecs
    L0_0 = L0_0[8]
    L0_0 = L0_0.Name
    if L0_0 == ".rsrc" then
      L0_0 = pesecs
      L0_0 = L0_0[8]
      L0_0 = L0_0.SizeOfRawData
      if L0_0 >= 3145728 then
        L0_0 = mp
        L0_0 = L0_0.SUSPICIOUS
        return L0_0
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
