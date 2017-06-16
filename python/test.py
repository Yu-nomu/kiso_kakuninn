import re

tmp={"13M140S","140S1345MD","123S"}


for i in tmp:
  if re.compile(".+S$").search(i):
    print ",".join(re.findall("\d+S$",i))
  elif re.compile(".+S.+").search(i):
    print ",".join(re.findall("^\d+S",i))
