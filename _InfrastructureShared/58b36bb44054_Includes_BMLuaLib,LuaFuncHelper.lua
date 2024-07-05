sms_untrusted_process()
reportSessionInformation()
reportTimingData()
if this_sigattrlog[1].matched then
  bm.add_related_string("NamedPipeImpersonation", safeJsonSerialize(this_sigattrlog[1]), bm.RelatedStringBMReport)
end
return mp.INFECTED
