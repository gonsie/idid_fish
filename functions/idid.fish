function idid -d "idid this"
         idid_help $argv[1]
         idid_source
         idid_what $argv[1]
         idid_tag $argv[1]
         idid_prev $argv
         if test $argv
            set -l __pd (tail -r $IDIDS | grep -m 1 "^[^-;]")
            set -l __td (date "+%a %b %d %Y")
            if not test $__pd = $__td
               date "+%a %b %d %Y" >> $IDIDS
            end
            echo "- $argv" >> $IDIDS
         else
            tail -r $IDIDS | grep -m 1 "^[^-;]"
            tail -r $IDIDS | awk '{if(/-/)print;else exit}'
         end
end
