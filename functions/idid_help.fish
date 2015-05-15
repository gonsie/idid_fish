function idid_help -d "prints idid help if flagged"
         # note: cannot use contains because of "-h" override
         set __help 0
         for h in $argv
             if test $h = "-h"
                set __help 1
             else if test $h = "-help"
                set __help 1
             else if test $h = "--help"
                set __help 1
             end
          end
          if test $__help -eq 1
             echo ""
             echo "idid fish: CLI re-implementation of idonethis.com"
             echo "           using fish (http://fishshell.com)"
             echo ""
             echo "idid \"this\"    - save an item with today's date"
             echo "idid -y \"this\" - save an item with yesterday's date"
             echo "idid -t        - list all tags"
             echo "idid -t tag    - list all items with given 'tag'"
             kill -SIGINT %self
          end
end