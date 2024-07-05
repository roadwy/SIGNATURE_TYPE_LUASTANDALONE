local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 204800 then
  L1_1 = mp
  L1_1 = L1_1.readprotection
  L1_1(false)
  L1_1 = tostring
  L1_1 = L1_1(mp.readfile(0, L0_0))
  if string.find(L1_1, "M%zi%zc%zr%zo%zs%zo%zf%zt%z %zE%zn%zh%za%zn%zc%ze%zd%z %zC%zr%zy%zp%zt%zo%zg%zr%za%zp%zh%zi%zc%z %zP%zr%zo%zv%zi%zd%ze%zr%z %zv%z1%z") ~= nil and string.find(L1_1, "Macro di Excel 4.0", 1, true) ~= nil and string.find(L1_1, "R%zo%zo%zt%z %zE%zn%zt%zr%zy%z") ~= nil and string.find(L1_1, "S%zu%zm%zm%za%zr%zy%zI%zn%zf%zo%zr%zm%za%zt%zi%zo%zn") ~= nil and string.find(L1_1, "D%zo%zc%zu%zm%ze%zn%zt%zS%zu%zm%zm%za%zr%zy%zI%zn%zf%zo%zr%zm%za%zt%zi%zo%zn") ~= nil and string.find(L1_1, "Fogli di lavoro", 1, true) ~= nil and string.find(L1_1, "Sheet1", 1, true) ~= nil and string.find(L1_1, "Foglio2", 1, true) ~= nil then
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
