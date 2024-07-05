pe.set_image_filename("\"Lollipop.exe\" INSTALL:|14693||86400|1|0007||")
pe.set_peattribute("deep_analysis", true)
pe.reemulate()
return mp.INFECTED
