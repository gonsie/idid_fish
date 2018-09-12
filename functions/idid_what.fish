function idid_what -d "idid what? lists today's items"
         set __what 0
         for h in $argv
             if test $h = "-w"
                set __what 1
             else if test $h = "-what"
                set __what 1
             else if test $h = "--what"
                set __what 1
             end
          end
          if test ${__what} -eq 1
             set -l __pd (tail -r $IDIDS | grep -m 1 "^[^-;]")
             set -l __td (date "+%a %b %d %Y")
             if test $__pd = $__td
                tail -r $IDIDS | awk '{if(/-/)print;else exit}'
             end
             kill -SIGINT %self
          end
end
