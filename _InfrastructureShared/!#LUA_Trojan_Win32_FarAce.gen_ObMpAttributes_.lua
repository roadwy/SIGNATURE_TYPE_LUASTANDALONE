local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 512 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 9
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 1162035498 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 13
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 336865834 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u32
L2_2 = headerpage
L3_3 = 33
L1_1 = L1_1(L2_2, L3_3)
if L1_1 ~= 1163021909 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readu_u16
L2_2 = headerpage
L3_3 = 87
L1_1 = L1_1(L2_2, L3_3)
if L1_1 > 100 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = nil
L3_3 = mp
L3_3 = L3_3.readprotection
L4_4 = false
L3_3(L4_4)
L3_3 = string
L3_3 = L3_3.lower
L4_4 = mp
L4_4 = L4_4.readfile
L4_4 = L4_4(88, L1_1)
L3_3 = L3_3(L4_4, L4_4(88, L1_1))
L2_2 = L3_3
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
function L3_3(A0_5, A1_6)
  return A0_5:sub(-A1_6:len()) == A1_6
end
function L4_4(A0_7, A1_8)
  local L3_9, L4_10
  L4_10 = A0_7
  L3_9 = A0_7.sub
  L3_9 = L3_9(L4_10, 1, A1_8:len())
  L3_9 = L3_9 == A1_8
  return L3_9
end
if L3_3(L2_2, ".exe") then
  if L3_3(L2_2, "pdf.exe") or L3_3(L2_2, "doc.exe") or L3_3(L2_2, "xls.exe") or L3_3(L2_2, "xlsx.exe") or L3_3(L2_2, "jpg.exe") or L3_3(L2_2, "docx.exe") or L4_4(L2_2, "tnt ") or L4_4(L2_2, "dhl ") or L4_4(L2_2, "po") or L4_4(L2_2, "rfq") or L2_2.find("payment", 1, true) or L2_2:find("shipment", 1, true) or L2_2:find("invoice", 1, true) or L2_2:find("swift", 1, true) or L2_2:find("deliver", 1, true) or L2_2:find("statement", 1, true) or L2_2:find("order", 1, true) or L2_2:find("confirmation", 1, true) or L2_2:find("urgent", 1, true) or L2_2:find("bank ", 1, true) or L2_2:find("bank_", 1, true) or L2_2:find("siparis", 1, true) or L2_2:find("pedido", 1, true) or L2_2:find("purchase", 1, true) or L2_2:find("fatura", 1, true) or L2_2:find("factura", 1, true) or L2_2:find("boleto", 1, true) or L2_2:find("inquiry", 1, true) or L2_2:find("tracking", 1, true) or L2_2:find("quotation", 1, true) or L2_2:find("rfq ", 1, true) or L2_2:find("arquivo_fiscal", 1, true) or L2_2:find("invoice", 1, true) or L2_2:find("declaration", 1, true) or L2_2:find("advice", 1, true) then
    return mp.INFECTED
  end
elseif L3_3(L2_2, ".scr") and (L3_3(L2_2, "pdf.scr") or L3_3(L2_2, "doc.scr") or L3_3(L2_2, "xls.scr") or L3_3(L2_2, "xlsx.scr") or L3_3(L2_2, "jpg.scr") or L3_3(L2_2, "docx.scr") or L4_4(L2_2, "tnt ") or L4_4(L2_2, "dhl ") or L4_4(L2_2, "po") or L4_4(L2_2, "rfq") or L2_2:find("payment", 1, true) or L2_2:find("shipment", 1, true) or L2_2:find("invoice", 1, true) or L2_2:find("swift", 1, true) or L2_2:find("deliver", 1, true) or L2_2:find("statement", 1, true) or L2_2:find("order", 1, true) or L2_2:find("confirmation", 1, true) or L2_2:find("urgent", 1, true) or L2_2:find("bank ", 1, true) or L2_2:find("bank_", 1, true) or L2_2:find("siparis", 1, true) or L2_2:find("pedido", 1, true) or L2_2:find("purchase", 1, true) or L2_2:find("fatura", 1, true) or L2_2:find("factura", 1, true) or L2_2:find("boleto", 1, true) or L2_2:find("inquiry", 1, true) or L2_2:find("tracking", 1, true) or L2_2:find("quotation", 1, true) or L2_2:find("rfq ", 1, true) or L2_2:find("arquivo_fiscal", 1, true) or L2_2:find("invoice", 1, true) or L2_2:find("declaration", 1, true) or L2_2:find("advice", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
