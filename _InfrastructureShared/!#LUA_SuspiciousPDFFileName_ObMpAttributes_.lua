local L0_0, L1_1
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  L0_0 = mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)
end
if L0_0 == nil then
  L1_1 = string.lower(mp.getfilename())
  if L1_1 == nil then
    return mp.CLEAN
  end
  L0_0 = L1_1:match("([^\\]+)$")
end
if L0_0 ~= nil and (string.match(L0_0, "^confidential") or string.match(L0_0, "^dhl") or string.match(L0_0, "^fidelity") or string.match(L0_0, "^fedex") or string.match(L0_0, "^freemobile") or string.match(L0_0, "^invoice") or string.match(L0_0, "^parcel") or string.match(L0_0, "^payment") or string.match(L0_0, "^po.#") or string.match(L0_0, "^po.+order") or string.match(L0_0, "^po%d%d%d%d") or string.match(L0_0, "^purchase.order") or string.match(L0_0, "^quotation") or string.match(L0_0, "^%d%d%d%d%d%d%d.pdf") or string.match(L0_0, "^document.%d+") or string.match(L0_0, "^shipment") or string.match(L0_0, "pending.+deposit") or string.match(L0_0, "mailbox.maintenance") or string.match(L0_0, "account.safety") or string.match(L0_0, "acct.review") or string.match(L0_0, "delivery.details") or string.match(L0_0, "important.update") or string.match(L0_0, "security.+mail") or string.match(L0_0, "bank.transaction") or string.match(L0_0, "account.verification") or string.match(L0_0, "money.transfer") or string.match(L0_0, "money.+confirmation") or string.match(L0_0, "new.order") or string.match(L0_0, "notification.letter") or string.match(L0_0, "violation.message") or string.match(L0_0, "transfer.instruction") or string.match(L0_0, "doc.pdf") or string.match(L0_0, "new.message") or string.match(L0_0, "new.purchase")) then
  return mp.INFECTED
end
return mp.CLEAN
