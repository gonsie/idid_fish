function idid_tag -d "idid tag lookup on items"
         set __tag 0
         for h in $argv
             if test $h = "-t"
                set __tag 1
             else if test $h = "-tag"
                set __tag 1
             else if test $h = "--tag"
                set __tag 1
             end
          end
          if test $__tag -eq 1
             grep -o "#[^ ]*" $IDIDS | sort | uniq
             kill -SIGINT %self
          end
end
