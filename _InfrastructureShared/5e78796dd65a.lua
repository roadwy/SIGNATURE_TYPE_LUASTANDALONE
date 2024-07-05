if peattributes.isexe and pehdr.SizeOfImage >= 217088 and pehdr.SizeOfImage <= 393216 then
  mp.set_mpattribute("Obf:Nivdort.S1")
  return mp.SUSPICIOUS
end
return mp.LOWFI
