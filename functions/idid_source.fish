function idid_source -d "set up idid file"
         set -g IDIDS ~/.idids
         if not test -e $IDIDS
            touch $IDIDS
         end
end