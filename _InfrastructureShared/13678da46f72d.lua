local L0_0, L1_1
L0_0 = pevars
L0_0 = L0_0.epsec
if L0_0 == 1 then
  L0_0 = pesecs
  L1_1 = pevars
  L1_1 = L1_1.epsec
  L0_0 = L0_0[L1_1]
  L0_0 = L0_0.Name
  if L0_0 == ".text" then
    L0_0 = pesecs
    L0_0 = L0_0[2]
    L0_0 = L0_0.Name
    if L0_0 == ".data" then
      L0_0 = pesecs
      L0_0 = L0_0[3]
      L0_0 = L0_0.Name
      if L0_0 == ".rsrc" then
        L0_0 = peattributes
        L0_0 = L0_0.no_decription
        if L0_0 then
          L0_0 = peattributes
          L0_0 = L0_0.suspicious_image_version
          if L0_0 then
            L0_0 = mp
            L0_0 = L0_0.INFECTED
            return L0_0
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
