if mp.get_mpattribute("MpHasValidProjPath") and mp.get_mpattribute("SIGATTR:mpinthandler") and peattributes.epinfirstsect and pehdr.NumberOfSections == 4 and pesecs[1].SizeOfRawData >= 106496 and pesecs[1].SizeOfRawData <= 147456 then
  return mp.INFECTED
end
return mp.LOWFI
