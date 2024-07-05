if pehdr.Machine == 34404 then
  mp.set_mpattribute("Lowfi:Win64/Minxer_Coinminer")
else
  mp.set_mpattribute("HSTR:Minxer_Coinminer")
end
return mp.CLEAN
