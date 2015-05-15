function idid -d "idid this"
         idid_help $argv[1]
         idid_source
         if test $argv
            set -l __pd (tail -r idid.txt | grep -m 1 "^[^-;]")
            set -l __td (date "+%a %b %d %Y")
            if not test $__pd = $__td
               date "+%a %b %d %Y" >> $IDIDS
            end
            echo $argv >> $IDIDS
         end
end