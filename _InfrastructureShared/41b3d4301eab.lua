local L0_0, L1_1, L2_2
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L1_1 = string
L1_1 = L1_1.sub
L2_2 = L0_0
L1_1 = L1_1(L2_2, -12)
if L1_1 == "iexplore.exe" then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = string
      L1_1 = L1_1.lower
      L2_2 = this_sigattrlog
      L2_2 = L2_2[1]
      L2_2 = L2_2.utf8p1
      L1_1 = L1_1(L2_2)
      L2_2 = string
      L2_2 = L2_2.lower
      L2_2 = L2_2(this_sigattrlog[3].utf8p2)
      if L1_1 ~= nil and L2_2 ~= nil then
        if L1_1:sub(-1) == "\000" then
          L1_1 = L1_1:gsub("^(.-).$", "%1")
        end
        if L2_2:sub(-1) == "\000" then
          L2_2 = L2_2:gsub("^(.-).$", "%1")
        end
        if string.find(L2_2, L1_1, 1, true) then
          return mp.INFECTED
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
