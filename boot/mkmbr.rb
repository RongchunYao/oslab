mbr = open(ARGV[0],"a")
mbr.write("\x00" *(510 - mbr.size))
mbr.write("\x55\xAA")
mbr.close
