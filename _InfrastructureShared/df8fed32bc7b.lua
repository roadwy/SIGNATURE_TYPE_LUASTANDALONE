local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "AGGR:XlsHasMacroSheet"
L0_0 = L0_0(L1_1)
if L0_0 ~= true then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "MpExcelFormulaRoutines"
  L0_0 = L0_0(L1_1)
  if L0_0 ~= true then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = 0
L1_1 = hstrlog
L1_1 = L1_1[6]
L1_1 = L1_1.hitcount
L2_2 = hstrlog
L2_2 = L2_2[5]
L2_2 = L2_2.hitcount
L1_1 = L1_1 + L2_2
if L1_1 >= 5 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/FormulaFuncGTE5"
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/FormulaFunc:"
  L3_3 = L3_3 .. L1_1
  L2_2(L3_3)
  L0_0 = L0_0 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[1]
L2_2 = L2_2.hitcount
if L2_2 >= 30 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/CharConcatGTE30"
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/CharConcat:"
  L3_3 = L3_3 .. hstrlog[1].hitcount
  L2_2(L3_3)
  L0_0 = L0_0 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[2]
L2_2 = L2_2.hitcount
if L2_2 >= 1 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/CharAdditionGTE10"
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/CharAddition:"
  L3_3 = L3_3 .. hstrlog[2].hitcount
  L2_2(L3_3)
  L0_0 = L0_0 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[3]
L2_2 = L2_2.hitcount
if L2_2 >= 1 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/CharSubtractGTE10"
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/CharSubtract:"
  L3_3 = L3_3 .. hstrlog[3].hitcount
  L2_2(L3_3)
  L0_0 = L0_0 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[7]
L2_2 = L2_2.hitcount
if L2_2 >= 5 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/runFuncGTE5"
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/runFunc:"
  L3_3 = L3_3 .. hstrlog[7].hitcount
  L2_2(L3_3)
  L0_0 = L0_0 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[8]
L2_2 = L2_2.hitcount
if L2_2 >= 1 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/execFuncGTE1"
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/execFunc:"
  L3_3 = L3_3 .. hstrlog[8].hitcount
  L2_2(L3_3)
  L0_0 = L0_0 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[9]
L2_2 = L2_2.hitcount
if L2_2 >= 1 then
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/registerFuncGTE1"
  L2_2(L3_3)
  L2_2 = mp
  L2_2 = L2_2.set_mpattribute
  L3_3 = "XlmMacro/registerFunc:"
  L3_3 = L3_3 .. hstrlog[9].hitcount
  L2_2(L3_3)
  L0_0 = L0_0 + 1
end
L2_2 = hstrlog
L2_2 = L2_2[10]
L2_2 = L2_2.hitcount
L3_3 = hstrlog
L3_3 = L3_3[11]
L3_3 = L3_3.hitcount
L2_2 = L2_2 + L3_3
L3_3 = hstrlog
L3_3 = L3_3[12]
L3_3 = L3_3.hitcount
L2_2 = L2_2 + L3_3
L3_3 = hstrlog
L3_3 = L3_3[13]
L3_3 = L3_3.hitcount
L2_2 = L2_2 + L3_3
if L2_2 >= 1 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("XlmMacro/callFuncGTE1")
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("XlmMacro/callFunc:" .. L2_2)
  L0_0 = L0_0 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[14]
L3_3 = L3_3.hitcount
if L3_3 >= 1 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("XlmMacro/evalConcatFuncGTE1")
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("XlmMacro/evalConcatFunc:" .. hstrlog[14].hitcount)
  L0_0 = L0_0 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[4]
L3_3 = L3_3.hitcount
if L3_3 >= 1 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("XlmMacro/fileDeleteFuncGTE1")
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("XlmMacro/fileDeleteFunc:" .. hstrlog[4].hitcount)
  L0_0 = L0_0 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[15]
L3_3 = L3_3.hitcount
if L3_3 >= 1 then
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("XlmMacro/concatOperatorX5")
  L3_3 = mp
  L3_3 = L3_3.set_mpattribute
  L3_3("XlmMacro/concatOperatorX5:" .. hstrlog[15].hitcount)
  L0_0 = L0_0 + 1
end
L3_3 = hstrlog
L3_3 = L3_3[16]
L3_3 = L3_3.hitcount
L3_3 = L3_3 + hstrlog[17].hitcount
L3_3 = L3_3 + hstrlog[18].hitcount
L3_3 = L3_3 + hstrlog[19].hitcount
L3_3 = L3_3 + hstrlog[20].hitcount
L3_3 = L3_3 + hstrlog[21].hitcount
L3_3 = L3_3 + hstrlog[22].hitcount
if L3_3 >= 4 then
  mp.set_mpattribute("XlmMacro/concatenateFuncGTE4")
  mp.set_mpattribute("XlmMacro/concatenateFunc:" .. L3_3)
  L0_0 = L0_0 + 1
end
if L0_0 >= 4 then
  return mp.LOWFI
end
return mp.CLEAN
