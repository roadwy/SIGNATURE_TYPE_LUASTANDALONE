local L0_0, L1_1
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
L0_0 = mp
L0_0 = L0_0.IsKnownFriendlyFile
L1_1 = MpCommon
L1_1 = L1_1.PathToWin32Path
L1_1 = L1_1(bm.get_imagepath())
L0_0 = L0_0(L1_1, true, true)
if L0_0 == true then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
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
  L1_1 = L1_1(L0_0, "\\program files", 1, true)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.find
    L1_1 = L1_1(L0_0, "\\windows\\", 1, true)
    if not L1_1 then
      L1_1 = string
      L1_1 = L1_1.find
      L1_1 = L1_1(L0_0, "\\atx", 1, true)
      if not L1_1 then
        L1_1 = string
        L1_1 = L1_1.find
        L1_1 = L1_1(L0_0, "pdv\\", 1, true)
        if not L1_1 then
          L1_1 = string
          L1_1 = L1_1.find
          L1_1 = L1_1(L0_0, "\\pdv", 1, true)
          if not L1_1 then
            L1_1 = string
            L1_1 = L1_1.find
            L1_1 = L1_1(L0_0, "caixa", 1, true)
            if not L1_1 then
              L1_1 = string
              L1_1 = L1_1.find
              L1_1 = L1_1(L0_0, "\\frente", 1, true)
              if not L1_1 then
                L1_1 = string
                L1_1 = L1_1.find
                L1_1 = L1_1(L0_0, "\\setuphost", 1, true)
              end
            end
          end
        end
      end
    end
  elseif L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
