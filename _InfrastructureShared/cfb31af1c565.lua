local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.GetSignatureMatchDuration
L0_0 = L0_0()
if L0_0 > 300000000 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[1]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L1_1 = L1_1.utf8p1
    L0_0 = L0_0(L1_1)
    L1_1 = string
    L1_1 = L1_1.lower
    L1_1 = L1_1(this_sigattrlog[1].utf8p2)
    L1_1 = string.gsub(L1_1, " ", "")
    L1_1 = string.gsub(L1_1, "\"", "")
    if L0_0 ~= L1_1 then
      return mp.CLEAN
    end
  end
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L0_0 = L0_0(L1_1, L1_1())
if L0_0 then
  L1_1 = string
  L1_1 = L1_1.find
  L1_1 = L1_1(L0_0, "\\windows\\", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "\\program files", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "\\programdata\\", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L1_1 = L1_1(L0_0, "\\blender", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L1_1 = L1_1(L0_0, "\\glens", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L1_1 = L1_1(L0_0, "\\microsoft.azure.", 1, true)
          end
        end
      end
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
  L1_1 = bm
  L1_1 = L1_1.add_action
  L1_1("EmsScan", 3000)
  L1_1 = mp
  L1_1 = L1_1.INFECTED
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
