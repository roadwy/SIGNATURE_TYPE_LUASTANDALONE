local L0_0, L1_1
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = mp
    L0_0 = L0_0.ContextualExpandEnvironmentVariables
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L1_1 = L0_0.len
    L1_1 = L1_1(L0_0)
    if L1_1 > 13 then
      L1_1 = string
      L1_1 = L1_1.sub
      L1_1 = L1_1(L0_0, -13)
      if L1_1 == "\\win32spl.dll" then
        L1_1 = string
        L1_1 = L1_1.lower
        L1_1 = L1_1(bm.get_imagepath())
        if string.sub(L1_1, -11) == "svchost.exe" then
          return mp.CLEAN
        end
      end
    end
    L1_1 = bm
    L1_1 = L1_1.add_related_file
    L1_1(L0_0)
  end
end
L0_0 = mp
L0_0 = L0_0.INFECTED
return L0_0
