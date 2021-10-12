# edit to use gef or pwndbg 
# source /opt/gef/gef.py
source /opt/pwndbg/gdbinit.py

source /opt/pwndbg/at.py
source /opt/Pwngdb/pwngdb.py
source /opt/Pwngdb/angelheap/gdbinit.py

# for Pwndbg
define hook-run
python
import angelheap
angelheap.init_angelheap()
end
end


# macro
define m
disass main
end

define t
tele 40
end

define hb
heap bin
end

define hc
heap chunks
end

define ha
heap arenas
end

define nc
nextcall
end
