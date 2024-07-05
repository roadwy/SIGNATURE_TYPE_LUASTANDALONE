local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = tostring
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 512
L2_2 = L1_1(L2_2, 512)
L0_0 = L0_0(L1_1, L2_2, L1_1(L2_2, 512))
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, "M%zi%zc%zr%zo%zs%zo%zf%zt%z %zE%zn%zh%za%zn%zc%ze%zd%z %zC%zr%zy%zp%zt%zo%zg%zr%za%zp%zh%zi%zc%z %zP%zr%zo%zv%zi%zd%ze%zr%z %zv%z1%z")
if L1_1 ~= nil then
  L1_1 = tostring
  L2_2 = mp
  L2_2 = L2_2.readfile
  L2_2 = L2_2(34048, 1280)
  L1_1 = L1_1(L2_2, L2_2(34048, 1280))
  L2_2 = string
  L2_2 = L2_2.find
  L2_2 = L2_2(L1_1, "Excel 4.0 Macros")
  if L2_2 ~= nil then
    L2_2 = tostring
    L2_2 = L2_2(mp.readfile(38288, 1536))
    if string.find(L2_2, "R%zo%zo%zt%z %zE%zn%zt%zr%zy%z") ~= nil then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
