function idid_prev -d "idid with date adjustment"
         set __what 0
         for h in $argv
            if test $h = "-p"
               set __what 1
            else if test $h = "-prev"
               set __what 1
            else if test $h = "--prev"
               set __what 1
            end
         end
         if test ${__what} -eq 1
            set -l __pd (tail -r $IDIDS | grep -m 1 "^[^-;]")
            set -l __td (date -v{$argv[2]} "+%a %b %d %Y")
            if not test $__pd = $__td
               date -v{$argv[2]} "+%a %b %d %Y" >> $IDIDS
            end
            echo "- $argv[3]" >> $IDIDS
         end
end
